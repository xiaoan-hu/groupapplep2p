<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>账户信息</title>
    <link rel="stylesheet" type="text/css" href="/static/css/info.css">
</head>
<body>
    <div id="box">

        <div id="photo">
            <!--todo 存放照片 上传 然后导入-->
        </div>

        <div id="account-info">
            <p>用户名：${用户名}</p>
            <p>最后登录时间：${时间}</p>
            <div>
                <button class="button" id="recharge">账户充值</button>
                <button class="button" id="reflect">账户体现</button>
            </div>
        </div>
        <hr id="hr1">

        <div id="money-info">
            <p>
                <span>账户总额：${$}元</span>
                <span>可用金额：${$}元</span>
                <span>冻结金额：${$}元</span>
            </p>
            <p>
                <span>代收利息：${$}元</span>
                <span>代收本金：${$}元</span>
                <span>待还本息：${$}元</span>
            </p>
        </div>
        <hr id="hr2">


    <div id="function">

        <div class="function-box">
            <div class="pic1"><img src="../../static/images/shiming.png"></div>
            <span class="bold">实名认证</span>
            <span class="state">${状态} <a href="#">查看</a></span>
            <span class="last-text">实名认证之后才能在平台投资</span>
        </div>

        <div id="mobile" class="function-box">
            <div class="pic1"><img src="../../static/images/shouji.jpg"></div>
            <span class="bold">手机认证</span>
            <span class="state">${状态} <a href="#">查看</a></span>
            <span class="last-text">可以收到系统操作信息，并增加使用安全性</span>
        </div>


        <div id="email" class="function-box">
            <div class="pic1"><img src="../../static/images/youxiang.jpg" style="margin: 0px"></div>
            <span class="bold">邮箱认证</span>
            <span class="state">${状态} <a href="#">查看</a></span>
            <span class="last-text">您可以设置邮箱来接受重要信息</span>
        </div>


        <div id="level" class="function-box">
            <div class="pic1"><img src="../../static/images/baozhan.jpg"></div>
            <span class="bold">VIP会员</span>
            <span class="state">${等级} <a href="#">查看</a></span>
            <span class="last-text">VIP会员，让你更快捷的投资</span>
        </div>

    </div>
    </div>
    <script type="text/javascript" src="../../static/js/jquery-1.12.4.js"/>
    <script type="text/javascript" src="../../static/js/bootstrap.js"/>


</body>
</html>