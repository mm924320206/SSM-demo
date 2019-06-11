<%@ page language="java" 
	contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" 
		content="text/html; charset=utf-8">
	<title>Spring MVC</title>
	<style type="text/css">
	* { padding: 0; margin: 0; font-family: '微软雅黑', Segoe UI Symbol; }
	body { background: #ccc; }
	#content-wrapper { text-align: center; }
	#content { background: #fff; width: 860px;
		margin: 0 auto; text-align: left;
		padding: 20px; }
	#content h2 { color: #454545; }
	#login-form { margin: 30px 0 0 0; }
	#login-form .item { margin: 0 0 15px 0; }
	#login-form .item b { width: 80px; 
		display: block; float: left; 
		font-size: 16px; font-weight: normal;
		line-height: 28px; }
	#login-form .item p {
		float: left; }
	#login-form .item .inp { width: 230px;
		height: 28px; padding: 0 10px;
		font-size: 16px;
		border: 1px solid #999;
		border-radius: 2px;
		background: #f0f0f0; }
	#login-form .item .inp:focus {
		border: 1px solid #999;
		background: #fff;
	}
	#login-form .item .button {
		width: 70px; height: 30px;
		background: #0278c2;
		color: #fff;
		font-size: 14px;
		border-left: 1px solid #fff;
		border-top: 1px solid #fff;
		border-right: 2px solid #aaa;
		border-bottom: 2px solid #aaa; }
	#login-form .item a { color: #0278c2;
		text-decoration: none; }
	#login-form .item a:hover {
		text-decoration: underline; }
	</style>
</head>
<body>
	<!-- 自定义变量，表示当前页面 -->
	<c:set var="pageName" 
		value="user_login_form"
		scope="request"></c:set>

	<!-- 引用header.jsp -->
	<c:import url="header.jsp"></c:import>

	<div id="content-wrapper">
	<div id="content">
		<h2>用户登录</h2>
		<form method="post" 
			action="${pageContext.request.contextPath }/user/handleLogin.do">
		<div id="login-form">
			<div class="item">
				<b>用户名</b>
				<p><input type="text" class="inp" 
					name="username" /></p>
				<div style="clear: both;"></div>
			</div>
			<div class="item">
				<b>密码</b>
				<p><input type="text" class="inp" 
					name="password" /></p>
				<div style="clear: both;"></div>
			</div>
			<div class="item">
				<input type="submit" class="button" 
					value="提交" />
			</div>
			<div class="item">
				<a href="${pageContext.request.contextPath }/user/reg.do">
					还没有账号了，注册新账号！
				</a>
			</div>
		</div>
		</form>
	</div>
		
	</div>
</body>
</html>