<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>收款明细</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/borrowing-project.css">
</head>
<body>
    <form id="title">
        <h4>时间范围</h4>
        <input type="date" class="form-control">
        <input type="date" class="form-control">
        <h4>状态</h4>

        <select  class="form-control" id="status">
            <option>全部</option>
            <option>待还款</option>
            <option>已还款</option>
            <option>逾期</option>
        </select>


        <input type="submit" value="查询" class="button">
    </form>

    <div class="container">
        <h4>收款明细</h4>
        <input type="button" class="search" value="账户充值">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th>借款</th>
                <th>收款金额</th>
                <th>收款本金</th>
                <th>收款利息</th>
                <th>借款期数</th>
                <th>借款期限</th>
                <th>投资时间</th>
                <th>借款状态</th>
            </tr>
            <%--todo    foreach--%>

            </tbody>
        </table>
        <div id="page">
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <%--todo   分页--%>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>


<script src="/static/js/jquery-3.2.1.js"/>
<script src="/static/js/bootstrap.js"/>
</body>
</html>
