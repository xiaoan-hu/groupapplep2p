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
            <option>待发布</option>
            <option>招标中</option>
            <option>已撤销</option>
            <option>流标</option>
            <option>满标1审</option>
            <option>满标2审</option>
            <option>满标审核被拒绝</option>
            <option>还款中</option>
            <option>已还清</option>
            <option>逾期</option>
        </select>


        <input type="submit" value="查询" class="button">
    </form>

    <div class="container">
        <h4>借款项目</h4>
        <input type="button" class="search" value="账户充值">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th>借款项目</th>
                <th>贷款类型</th>
                <th>借款金额</th>
                <th>借款利率</th>
                <th>借款月数</th>
                <th>还款方式</th>
                <th>当前投标</th>
                <th>申请时间</th>
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
