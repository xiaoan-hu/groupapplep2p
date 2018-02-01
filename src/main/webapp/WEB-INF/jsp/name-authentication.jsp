<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实名认证</title>
    <link rel="stylesheet" href="/static/css/name-authentication.css">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
</head>
<body>
<div id="box">
    <div id="box-top">
        <p>实名认证</p>
    </div>
    <p style="color: #b50206;margin-top: 0px">为保护您账户安全，实名认证成功之后不能修改信息，请认真填写！</p>
    <table>
        <tbody>
        <tr>
            <td><span>用户名</span></td>
            <td>${name}</td>
        </tr>
        <tr>
            <td><span>姓名</span></td>
            <td><input class="form-control" type="text"></td>
        </tr>
        <tr>
            <td><span>性别</span></td>
            <td>
                <select class="form-control">
                    <option value="1" selected>男</option>
                    <option value="0">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><span>证件号码</span></td>
            <td><input type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><span>出生日期</span></td>
            <td><input type="date" class="form-control"></td>
        </tr>
        <tr>
            <td><span>证件地址</span></td>
            <td><input style="width: 400px" type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><span id="idCard">身份证照片</span></td>
            <td>
                <p>请点击“选择图片”，选择证件的正反两面照片。</p>
                <div class="photo-box"></div>
                <div class="photo-box"></div>
                <a href="">查看样板</a>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><button class="box-button" type="submit">提交认证</button></td>
        </tr>
        </tbody>
    </table>
</div>
<script src="/static/js/jquery-3.2.1.js"></script>
<script src="/static/js/bootstrap.js"></script>
</body>
</html>
