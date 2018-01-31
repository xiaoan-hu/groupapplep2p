<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我要借款</title>
    <link rel="stylesheet" type="text/css" href="/static/css/loan.css">
</head>
<body>

<header>
<%@include file="head.jsp"%>
</header>

<section>

    <div id="box1" class="box">
        <div id="tap1" class="tap">
            <p>信用贷</p>
        </div>
        <h3 class="font-money">认证后可借<em>￥2,000.00</em></h3>
        <a href="../../">申请条件</a>
        <p>仅限上海地区</p>
        <ul>
            <li>填写基本资料</li>
            <li>身份认证</li>
            <li>材料认证分数达到30分</li>
            <li>视频认证</li>
        </ul>
        <div class="button-box"><button class="button" >登录后申请</button></div>
        <%--  todo  如何实现连接--%>
    </div>

    <div id="box2" class="box">
        <div id="tap2" class="tap">
            <p>车易贷</p>
        </div>
        <h3 class="font-money">认证后可借<em>￥10,000.00</em></h3>
        <a href="../../">申请条件</a>
        <p>仅限上海地区</p>
        <ul>
            <li>填写基本资料</li>
            <li>身份认证</li>
            <li>材料认证分数达到30分</li>
            <li>提交车辆抵押相关资料</li>
            <li>视频认证</li>
        </ul>
        <div class="button-box"><button class="button">登录后申请</button></div>
    </div>

    <div id="box3" class="box">
        <div id="tap3" class="tap">
            <p>房易贷</p>
        </div>
        <h3 class="font-money">认证后可借<em>￥10,0000.00</em></h3>
        <a href="../../">申请条件</a>
        <p>仅限上海地区</p>
        <ul>
            <li>填写基本资料</li>
            <li>身份认证</li>
            <li>材料认证分数达到30分</li>
            <li>提交房屋抵押相关资料</li>
            <li>视频认证</li>
        </ul>
        <div class="button-box"><button class="button">登录后申请</button></div>
    </div>
</section>

<%@include file="footer.jsp"%>
</body>
</html>
