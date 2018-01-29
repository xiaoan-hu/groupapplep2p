<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css"/>
    <link rel="stylesheet" href="/static/css/home-page.css"/>
</head>
<body>

<header>
<%@ include file="head.jsp"%>
</header>

<section  id="html">

<div id="picture">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="/static/images/banner01.jpg" alt="双庆送豪礼">
                <div class="carousel-caption">

                </div>
            </div>
            <div class="item">
                <img src="/static/images/banner02.jpg" alt="春节来临，投资就奖">
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>


<div id="action">

    <div class="action-div">
        <div class="action-img"><img src="/static/images/feature01.png"></div>
        <span>投资理财</span>
        <p>稳定投资、高收益、短期限，易融贷先行赔付，<br>保障投资人权益。</p>
    </div>

    <div class="action-div">
        <div class="action-img"><img src="/static/images/feature02.png"></div>
        <span>投资理财</span>
        <p>稳定投资、高收益、短期限，易融贷先行赔付，<br>保障投资人权益。</p>
    </div>

    <div class="action-div">
        <div class="action-img"><img src="/static/images/feature03.png"></div>
        <span>投资理财</span>
        <p>稳定投资、高收益、短期限，易融贷先行赔付，<br>保障投资人权益。</p>
    </div>
</div>

<div id="borrow-ing" class="container">
    <h2>进行中借款</h2>
    <span><a href="7">进入投资列表</a></span>
        <table class="table table-striped">
        <tbody>
        <tr>
            <th>借款人</th>
            <th>借款标题</th>
            <th>年利率</th>
            <th>金额</th>
            <th>还款方式</th>
            <th>借款期限</th>
            <th>进度</th>
            <th>操作</th>
        </tr>
        <%--todo <c:forEach items="">--%>
        <tr>
            <td>.</td>
            <td>.</td>
            <td>.</td>
            <td>.</td>
            <td>.</td>
            <td>.</td>
            <td>.</td>
            <td><button href="<c:url value=""/>">查看</button></td>
        </tr>

        <%--</c:forEach>--%>
        </tbody>
    </table>
</div>

<div id="news" class="container">
    <h2>企业最新资讯</h2>
    <span><a href="8">更多资讯</a></span>

    <ul class="list-group">
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
        <li class="list-group-item news-href"><span>央视力挺互联网金融 肯定p2p行业</span><span class="news-right">发布时间 2018-1-18</span></li>
    </ul>

        </tbody>
    </table>
</div>
</section>

<%@include file="footer.jsp"%>


<script src="<c:url value="/static/js/jquery-1.12.4.js"/>"></script>
<script src="<c:url value="/static/js/bootstrap.js"/>"></script>
</body>
</html>