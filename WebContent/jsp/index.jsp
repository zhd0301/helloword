<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>demotest</title>
</head>
<body>
	<form name="index" action="${ pageContext.request.contextPath }/index.action" method="post">
		用户名：<input type="text" id="user.username"/>
		<br/>
		密码：<input type="text" id="user.password"/>
		<br/>
		地址：<input type="text" id="user.address"/>
		<br/>
		<input type="submit" value="提交" />
	</form>
</body>
</html>