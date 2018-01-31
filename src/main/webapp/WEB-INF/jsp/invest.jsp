<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我要投资</title>
    <link rel="stylesheet" type="text/css" href="/static/css/invest.css">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">
</head>
<body>

<header>
<%@include file="head.jsp"%>
</header>

<section>
    <h2>投资列表</h2>
    <div id="status-list">
        <h4>标的状态</h4>
        <ul class="nav nav-tabs">
            <%--打开这个页面的时候，此三个数据都是传过来的，根据不同的名字区分--%>
            <%--TODO  data 是指 索要的数据 名字--%>
            <li role="presentation" onclick="show(this,data)"><a href="#">全部</a></li>
            <li role="presentation" onclick="show(this,data)"><a href="#">招标中</a></li>
            <li role="presentation" onclick="show(this,data)"><a href="#">已完成</a></li>
        </ul>
        <div id="status">

        </div>
    </div>
</section>


<%@include file="footer.jsp"%>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"/>
<script type="text/javascript" src="/static/js/bootstrap.js"/>
<script type="text/javascript" src="/static/js/vue.js"/>
<script>

function show(btn,data) {
    $.get("<c:url value=''/>",{},function (data) {
        var string=" <table  class=\"table table-striped\">\n" +
            "<tbody>\n" +
            "<tr>\n" +
            "<th>借款人</th>\n" +
            "<th>借款标题</th>\n" +
            "<th>年利率</th>\n" +
            "<th>金额</th>\n" +
            "<th>还款方式</th>\n" +
            "<th>进度</th>\n" +
            "<th>操作</th>\n" +
            "</tr>";
        var string2="";
        for (var i in data){
            var record=data[i];
            /*todo  参数值*/
            string2+="<tr>\n" +
                "<td>"+record+"</td>\n" +
                "<td>"+record+"</td>\n" +
                "<td>"+record+"</td>\n" +
                "<td>"+record+"</td>\n" +
                "<td>"+record+"</td>\n" +
                "<td>"+record+"</td>\n" +
                "<td><button href=\"<c:url value=''/>\">查看</button></td>"+
                "</tr>";

        }
        var content=string+string2+"</tbody></table>";
        $("#status").html(content);
    },"json");
}
</script>
</body>
</html>
