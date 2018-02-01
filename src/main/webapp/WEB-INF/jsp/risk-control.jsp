<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>风控资料认证</title>
    <link rel="stylesheet" href="/static/css/risk-control.css">
</head>
<body>
<div id="box">
    <div id="box-top">
        <p>用户认证文件信息</p>
    </div>
    <c:if test="${empty message}">
        <table>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </c:if>

    <div><button id="box-button" type="submit">上传用户</button></div>
</div>
</body>
</html>
