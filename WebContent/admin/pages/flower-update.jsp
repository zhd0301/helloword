<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link type="text/css" href="css/admin.css" rel="stylesheet">

</head>
<body>
	<table cellspacing=0 cellpadding=0 width="100%" align=center border=0>
		<tr height=28><td background="images/title_bg1.jpg">当前位置 &raquo; 鲜花管理</td></tr>
		<tr><td bgcolor=#b1ceef height=1></td></tr>
		<tr height=20><td background="images/shadow_bg.jpg"></td></tr>
	</table>


		<form action="roomUpdate.action" method="post" enctype="multipart/form-data">
<%-- 					<input type="hidden" name="flower.id" value="${room.id}">
 --%>			房间号:<input type="text" name="room.rid" value="${room.rid}" required="required"/><br>
			类型:<input type="text" name="room.type" value="${room.rtype}" required="required"/><br>
			<%-- 类型:<select name="flower.category.id" style="width: 160px">
						<s:iterator var="category" value="categories">
							<option value="${category.id}" <s:if test="#category.id==flower.category.id">selected="selected"</s:if>>${category.name}</option>
						</s:iterator>
					</select><br> --%>
			价格:<input type="text" name="room.price" value="${room.rprice}" required="required"/><br>
			预定状态:<input type="text" name="room.dispose" value="${room.dispose}" required="required"/><br>
			入住日期:<input type="text" name="room.starttime" value="${room.starttime}" required="required"/><br>
			离店日期:<input type="text" name="room.endtime" value="${room.endtime}" required="required"/><br>
			<input type="submit" value="修改">
		</form>

</body>
</html>