<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人资料</title>
    <link rel="stylesheet" href="/static/css/name-authentication.css">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
</head>
<body>
<div id="box">
    <div id="box-top">
        <p>个人资料</p>
    </div>
    <table>
        <tbody>
        <tr>
            <td><span>用户名</span></td>
            <td>${name}</td>
        </tr>
        <tr>
            <td><span>真实姓名</span></td>
            <c:choose>
                <c:when test="${empty tureName}">
                    <td>
                        <p style="margin-top: -16px"><span style="color: black">未认证</span> <a href="">[马上认证]</a></p>
                    </td>
                </c:when>
                <c:otherwise>
                    <td>${tureName}</td>
                </c:otherwise>
            </c:choose>
        </tr>
        <tr>
            <td><span>身份证号码</span></td>

            <c:choose>
                <c:when test="${empty idCard}">
                    <td>
                        <p style="margin-top: -16px"><span style="color: black">未认证</span> <a href="">[马上认证]</a></p>
                    </td>
                </c:when>
                <c:otherwise>
                    <td>${idCard}</td>
                </c:otherwise>
            </c:choose>

        </tr>
        <tr>
            <td><span>手机号码</span></td>
            <td><input type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><span>邮箱</span></td>
            <td><input type="email" class="form-control"></td>
        </tr>
        <tr>
            <td><span>个人学历</span></td>
            <td>
                <select class="form-control">
                    <option selected>---请选择---</option>
                    <option value="">小学</option>
                    <option value="">中学</option>
                    <option value="">高中</option>
                    <option value="">中专</option>
                    <option value="">大专</option>
                    <option value="">本科</option>
                    <option value="">博士</option>
                    <option value="">研究生</option>
                    <option value="">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><span>月收入</span></td>
            <td>
                <select class="form-control">
                    <option selected>---请选择---</option>
                    <option value="1">1700元以下</option>
                    <option value="2">1700~3500元</option>
                    <option value="3">3500~5500元</option>
                    <option value="4">5500~7500元</option>
                    <option value="5">7500~9000元</option>
                    <option value="6">9000~15000元</option>
                    <option value="7">2万元以上</option>
                    <option value="8">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><span>婚姻情况</span></td>
            <td>
                <select class="form-control">
                    <option selected>---请选择---</option>
                    <option value="">已婚</option>
                    <option value="">未婚</option>
                    <option value="">离异</option>
                    <option value="">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><span>子女情况</span></td>
            <td>
                <select class="form-control">
                    <option selected>---请选择---</option>
                    <option value="">无</option>
                    <option value="">一个</option>
                    <option value="">两个</option>
                    <option value="">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><span>住房条件</span></td>
            <td>
                <select class="form-control">
                    <option selected>---请选择---</option>
                    <option value="">租房</option>
                    <option value="">有房</option>
                    <option value="">贷款买房</option>
                    <option value="">无地居住</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><button id="keep" type="submit">保存数据</button></td>
        </tr>
        </tbody>
    </table>
</div>
<script src="/static/js/jquery-3.2.1.js"></script>
<script src="/static/js/bootstrap.js"></script>
</body>
</html>
