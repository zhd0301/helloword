<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid" style="background-color: blanchedalmond">
    <div class="col-md-4">
        <img src="../img/logoko.png" style="width: 160px; height: 90px;">
    </div>
    <div class="col-md-4">
        <ul class="list-inline" style="line-height: 90px; ">
            <li><a href="index.action">首页</a></li>
            <li><a href="#">酒店服务</a></li>
            <li><a href="#">图片详情</a></li>
            <li><a href="#">关于我们</a></li>
        </ul>
    </div>
    <div class="col-md-4">
        <ul class="list-inline" style="line-height: 90px; ">
            <s:if test="session.username!=null">
<%-- 		        <li>欢迎！<a href="my.action" <%if(request.getRequestURI().contains("/my.jsp")){out.print("class='current'");}%>>${customer.username }</a></li>
 --%>		        <li>欢迎！<a href="my.action" >${customer.username }</a></li>
		        <li><a href="order.action" <%if(request.getRequestURI().contains("/order.jsp")){out.print("class='current'");}%>>我的订单</a></li>
		        <li><a href="logout.action">退出</a></li>
	        </s:if>
	        <s:if test="session.username==null">
		        <li><a href="loginpage.action" <%if(request.getRequestURI().contains("/login.jsp")){out.print("class='current'");}%>>登录</a></li>
		        <li><a href="registerpage.action" <%if(request.getRequestURI().contains("/register.jsp")){out.print("class='current'");}%>>注册</a></li>
<!-- 	        	<li><a href="../admin/login.jsp" target="_blank">后台登录</a></li>
 -->	     </s:if>
        </ul>
    </div>
</div>
</body>
</html>