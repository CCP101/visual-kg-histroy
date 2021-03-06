const Koa = require('koa');
const bodyParser = require('koa-bodyparser');
const cors = require('koa2-cors');
const session = require("koa-session");
const { v1: uuidv1 } = require('uuid');
const router = require('koa-router')();
const os = require('os');
const { NodesRead, ConnectMysql, ReturnServerKey, UsernameCheck} = require('./util');
const { registerUser, loginCheck} = require("./userSetting");
const app = new Koa();
let myHost = '';

/**
 * 对本地IP进行过滤及修改
 */
function getIPAdd() {
    let ifAces = os.networkInterfaces();
    for (var dev in ifAces) {
        if (dev.includes('WLAN')) {
            break
        }
    }
    ifAces[dev].forEach(function (details) {
        if (details.family === 'IPv4') {
            let adr = details.address;
            myHost = adr;
            return adr;
        }
    })
}
getIPAdd();

/**
 * 本项目技术栈大坑-前端Axios默认不处理服务器端修改cookies的请求
 * 此处要对应设置KOA的CORS配置，允许本地调试时跨域
 * 正式服务器上线时理论上不需要考虑本问题，但仍需测试
 */
app.use(cors({
    credentials: true,
    // web前端服务器地址，本地调试使用
    origin: 'http://localhost',
}));
/**
 * KOA框架配置session
 * 参考链接：https://segmentfault.com/a/1190000016707043
 */
app.use(session({
    key: "TUST",
    maxAge: 1000 * 60 * 60 * 2
}, app));
//请注意 app配置工具的顺序不能错，否则bodyParser无法正常工作
app.use(bodyParser());
app.keys = ['TUST'];
app.use(router.routes());
app.use(router.allowedMethods());
app.listen(3000);


app.use(async (ctx, next) => {
    try {
        await next();
    } catch (e) {
        console.log(e);
    }
});

/**
 * 对/node GET请求进行监听，实现对Neo4j数据库的包装访问
 * 通过ctx.query解析GET请求
 * @return res Neo4j查询结果
 */
router.get('/node', (ctx) => {
    // console.log(myHost);
    let client_list = new Set();
    let clientHost = ctx.req.connection.remoteAddress.slice(7,);
    let cypherQuery;
    let key;
    let cypher_list = {
        "selectPeople": "MATCH (n:DPerson) RETURN n LIMIT 100",
        "selectRelation": "MATCH (P1:DPerson)-[r]-(P2:DPerson) RETURN r ",
    };
    // 从主页访问的情况
    if (ctx.req.headers.origin) {
        if (client_list.has(clientHost) === false) {
            client_list.add(clientHost);
        }
        cypherQuery = ctx.query.query;
        key = ctx.query.key;
    }
    // 限制访问范围，生产环境可以用来拦截外部来的访问
    // 开发环境建议不修改方便调试，如只允许本机访问需修正else内的代码
    else if (clientHost.includes(myHost) || clientHost === '::1') {
        console.log(clientHost + '正在访问3000端口并请求');
        cypherQuery = ctx.query.query;
        key = ctx.query.key;
    } else {
        console.log(clientHost + '正在从外部访问3000端口并请求');
        cypherQuery = ctx.query.query;
        key = ctx.query.key;
    }
    // 打印当前查询
    console.log(cypher_list[cypherQuery]);
    return NodesRead(cypher_list[cypherQuery], key)
        .then(res => {
            ctx.body = res
        })
});

/**
 * 对/sql GET请求进行监听，实现对MySQL数据库的包装访问
 * 通过ctx.query解析GET请求
 * @return res MySQL查询结果
 */
router.get('/sql', (ctx) => {
    let sql_list = {
        'getAllUsers': 'SELECT * FROM people',
        'getUserByName': 'SELECT * FROM users WHERE username = ?',
        'getUserByID': 'SELECT * FROM users WHERE id = ?',
        'getExamArrangement': 'SELECT * FROM exam_arrangement',
    };
    let sql_select = ctx.query.query;
    let sql = sql_list[sql_select];
    return ConnectMysql(sql)
        .then(res => {
            ctx.body = res
        })
});

/**
 * 对/key GET请求进行监听，发送服务器生成的公匙
 * @return res RSA公匙
 */
router.get('/key', (ctx) => {
    return ReturnServerKey()
        .then(res => {
            ctx.body = res
        })
});

/**
 * 对/userCheck GET请求进行监听，检查注册ID是否可用
 * @return res 检查结果
 */
router.get('/userCheck', (ctx) => {
    let username = ctx.query.query;
    let userLogin = ctx.cookies.get("userLogin") || "No userLogin";
    console.log("cookies:  " + userLogin);
    console.log("session:  " + ctx.session.userID);
    return UsernameCheck(username)
        .then(res => {
            ctx.body = res
        })
});

/**
 * 对/exit GET请求进行监听，用户退出
 * 清空cookies和session
 * @return res 退出状态码
 */

router.get('/exit', (ctx) => {
    ctx.cookies.set('name','',{signed:false,maxAge:0})
    ctx.session = null;
});

/**
 * 对/login POST请求进行监听，用户登录业务
 * 通过ctx.body解析POST内容
 * ctx.session 创建用户session
 * ctx.cookies 创建用户cookies
 * @return res 检查结果
 */
router.post('/login', async (ctx) => {
    let data = ctx.request.body;
    let userID = uuidv1();
    ctx.session.userID = userID;
    ctx.session.userName = data.username;
    let returnCode = await loginCheck(data);
    if (returnCode === 200 && data.rememberCheck === false) {
        ctx.cookies.set("userLogin", userID, { maxAge: 1000 * 60 * 60 * 2, signed: true});
    }else if (returnCode === 200 && data.rememberCheck === true) {
        ctx.cookies.set("userLogin", userID, { maxAge: 1000 * 60 * 60 * 24 * 7, signed: true});
    }
    ctx.body = returnCode;
});

/**
 * 对/register POST请求进行监听，注册账户事务
 * 通过ctx.body解析POST内容
 * @return res 检查结果
 */
router.post('/register', async (ctx) => {
    let data = ctx.request.body;
    ctx.body = await registerUser(data);
});



process.on("unhandledrejection", (reason, promise) => {
    console.log(reason, promise);
})
