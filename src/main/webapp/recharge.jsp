<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>借款项目</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/borrowing-project.css">
</head>
<body>
    <form id="title">
        <h4>时间范围</h4>
        <input type="date" placeholder=" " class="form-control">
        <input type="date" placeholder=" " class="form-control">
        <h4>状态</h4>

        <select  class="form-control" id="status">
            <option>全部</option>
            <option>审核中</option>
            <option>审核通过</option>
            <option>审核拒绝</option>
        </select>


        <input type="submit" value="查询" class="button">
    </form>

    <div class="container">
        <h4>充值明细</h4>
        <input type="button" class="search" value="账户充值">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th>平台账号</th>
                <th>交易号</th>
                <th>充值时间</th>
                <th>充值金额</th>
                <th>充值状态</th>
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
