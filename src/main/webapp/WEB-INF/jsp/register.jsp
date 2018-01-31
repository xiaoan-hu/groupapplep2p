<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="/static/css/register.css">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">

</head>
<body>
<h1>注册</h1>
<form action="#">
    <div class="box">
    <div class="div" style="top: 10px;color: skyblue"><h3>填写注册信息</h3></div>

    <div class="div" style="top: 40px;">
        <div class="tap">用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</div>
        <div><input type="text" placeholder="用户名为2~16位字母,数字或中文"></div>
        <div style="font-size: 14px;color: lightpink">提示：请勿使用真实姓名</div>
    </div>

    <div class="div" style="top: 60px;">
        <div class="tap">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</div>
        <div><input type="password" placeholder="长度为6-16位,不能是纯数字或字母"></div>
    </div>

    <div class="div" style="top: 80px;">
        <div class="tap">重&nbsp;&nbsp;&nbsp;置&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码</div>
        <div><input type="password" placeholder="再次填写密码"></div>
    </div>

    <div class="div" style="top: 100px;">
        <div class="tap">验&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 证&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</div>
        <div><input type="text" placeholder="验证码"></div>
        <div style="width: 100px;height: 30px;border: solid 1px black">yanzhengma</div>
    </div>

    <div class="div" style="top: 120px;">
        <div class="tap">手&nbsp;&nbsp;&nbsp;机&nbsp;&nbsp;&nbsp;号&nbsp;&nbsp;码</div>
        <div><input type="text" placeholder="请填写手机号码"></div>
        <div><button >发送手机验证码</button></div>
    </div>

    <div class="div" style="top: 140px;">
        <div class="tap">手&nbsp;机&nbsp;验&nbsp;证&nbsp;码</div>
        <div><input type="text" placeholder="填写手机收到的短信验证码"></div>
    </div>

    <div class="div" style="top: 160px;">
        <div class="tap">推&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</div>
        <div><input type="text" placeholder="借款学员请联系机构老师"></div>
    </div>

    <div class="div" style="top: 185px;">
        <div><a class="center" href="$">《鸿学金信网站服务协议》</a></div>
    </div>

    <div class="div" style="top: 200px;">
        <div><button class="center">同意协议并注册</button></div>
    </div>
    </div>
</form>
<script type="text/javascript" src="../../static/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="../../static/js/bootstrap.js"></script>
</body>
</html>