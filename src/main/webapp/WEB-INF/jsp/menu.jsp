<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title id="title">个人中心->{{title}}</title>
    <%--TODO --%>
    <link rel="stylesheet" href="/static/css/bootstrap.css"/>
    <link rel="stylesheet" href="/static/css/menu.css"/>

</head>
<body>

<header>
    <%@include file="head.jsp"%>
</header>

<section>

    <div id="box1">
    <div class="list-group">
        <div class="list-group-item active">
            <h4>借贷项目</h4>
        </div>
        <a href="#" class="list-group-item">
            <div class="list-group-item-text">
                投标明细
            </div>
        </a>
        <a href="collection.jsp" class="list-group-item" target="content">
            <div class="list-group-item-text">
                收款明细
            </div>
        </a>
        <a href="borrow.jsp" class="list-group-item" target="content">
            <div class="list-group-item-text">
                借款项目
            </div>
        </a>
        <a href="repayment.jsp" class="list-group-item" target="content">
            <div class="list-group-item-text">
                还款明细
            </div>
        </a>
    </div>

    <div class="list-group">
        <div href="#" class="list-group-item active">
            <h4>我的账户</h4>
        </div>
        <a href="info.jsp" id="select" class="list-group-item" target="content">
            <div class="list-group-item-text">账户信息</div>
        </a>
        <a href="#" class="list-group-item">
            <div class="list-group-item-text">实名认证</div>
        </a>
        <a href="#" class="list-group-item">
            <div class="list-group-item-text">风控资料认证</div>
        </a>
        <a href="#" class="list-group-item">
            <div class="list-group-item-text">银行卡管理</div>
        </a>
        <a href="login-record.jsp" class="list-group-item" target="content">
            <div class="list-group-item-text">登录记录</div>
        </a>
        <a href="#" class="list-group-item">
            <div class="list-group-item-text">个人资料</div>
        </a>
    </div>

        <div class="list-group">
            <a href="#" class="list-group-item active">
                <h4>产品详情</h4>
            </a>
            <a href="#" class="list-group-item">
                <div class="list-group-item-text">账户流水</div>
            </a>
            <a href="recharge.jsp" class="list-group-item" target="content">
                <div class="list-group-item-text">充值明细</div>
            </a>
            <a href="#" class="list-group-item">
                <div class="list-group-item-text">提现申请</div>
            </a>
        </div>

    </div>

        <iframe name="content" id="content"
                scrolling="no" frameborder="0"
                width="75%" height="700" seamless>
        </iframe>

</section>

<%@include file="footer.jsp"%>


<script type="text/javascript" src="../../static/js/jquery-1.12.4.js"/>
<script type="text/javascript" src="../../static/js/bootstrap.js"/>
<script  type="text/javascript" src="../../static/js/vue.js"/>

<script type="text/javascript">

</script>
</body>
</html>