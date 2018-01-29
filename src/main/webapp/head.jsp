<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="static/css/head.css">
</head>
<body>

<div id="top1">
    <table>
        <tbody>
        <tr>
            <td><a href="home-page.jsp">首页</a></td>

            <c:if test="${not empty account}">

                <td><a href="#">${account}</a></td>

                <!--todo 是否登录 登录的时候显示用户名，未登录的时候显示登录-->

                <td><a href="#">账户充值</a></td>
            </c:if>

            <c:if test="${empty account}">

                <td><a href="#">账户充值</a></td>


                <td><a href="#">登录</a></td>
                <!--todo 未登录的时候 隐藏  登录的时候显示  注销-->
            </c:if>
            <td><a href="#">帮助</a></td>
        </tr>
        </tbody>
    </table>
</div>

<div id="top2">
    <table>
        <tbody>
        <tr>
            <td id="logo"><img src="static/images/logo.png"></td>
            <td id="home-page" style="width: 70px"><h4><a href="home-page.jsp"> 首页 &nbsp;&nbsp;</a></h4></td>
            <td id="invest"><h4><a href="invest.jsp">&nbsp;&nbsp; 我要投资 &nbsp;&nbsp;</a></h4></td>
            <td id="loan"><h4><a href="loan.jsp">&nbsp;&nbsp; 我要借款 &nbsp;&nbsp;</a></h4></td>
            <td id="mine"><h4><a href="menu.jsp">&nbsp;&nbsp; 个人中心&nbsp;&nbsp;</a></h4></td>
            <td id="guide"><h4><a href="guide.jsp">&nbsp;&nbsp; 新手指引&nbsp;&nbsp;</a></h4></td>
            <td id="about-us"><h4><a href="about-us.jsp">&nbsp;&nbsp; 关于我们&nbsp;&nbsp;</a></h4></td>
        </tr>
        </tbody>
    </table>
</div>

<script>

</script>
</body>
</html>