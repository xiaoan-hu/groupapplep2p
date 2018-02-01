<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/static/css/login.css"/>
	</head>
	<body>
	<header >
		<div id="top-black">
			<div id="top-page1"><a class="top-href" href="home-page.jsp">首页</a></div>
			<div id="top-page2"><a class="top-href" href="">登录</a></div>
			<div id="top-page3"><a class="top-href" href="">帮助</a></div>
		</div>
		<div class="top-grey">
			<div id="logo-box">
				<img id="logo" src="/static/images/logo.png">
			</div>
			<div id="welcom">用户登录</div>
		</div>
	</header>

	<section>
		<form action="#">
			<table>
				<tr>
					<td></td>
					<td class="grey">请输入用户名和密码</td>
				</tr>
				<tr>
					<td>用户名</td>
					<td><input class="form-control" type="text"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input class="form-control" type="password"></td>
					
				</tr>
				<tr>
					<td></td>
					<td><input  class="submit" type="submit" value="登录"></td>
					<td><a href="register.jsp">新用户，马上注册</a></td>
				</tr>
			</table>
			
		</form>
	</section>
<%@include file="/WEB-INF/jsp/footer.jsp"%>

	</body>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="static/js/bootstrap.js"></script>
</html>
