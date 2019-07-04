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
		<tr height=28><td background="images/title_bg1.jpg">当前位置 &raquo; 房间管理</td></tr>
		<tr><td bgcolor=#b1ceef height=1></td></tr>
		<tr height=20><td background="images/shadow_bg.jpg"></td></tr>
	</table>


		<%-- <form action="flowerByCategory.action">
			<select name="categoryid" style="width:100px">
				<option value="0">全部</option>
				<s:iterator value="#request.categories">
					<option value=<s:property value="id"/> <s:if test="id==categoryid">selected="selected"</s:if>>
						<s:property value="name"/>
					</option>
				</s:iterator>
			</select><input type="submit" value="按类别查询">
		</form><br> --%>

		<table border="1" class="listtable">
			<tr>
				<th>房间号</th><th>类型</th><th>价格</th><th>预定状态</th><th>入住日期</th><th>离店日期</th><th>操作</th>
			</tr>
			<!-- 用struts的iterator标签遍历集合 -->
			<s:iterator value="#request.room">
	          	<tr>
	          		<td><s:property value="rid"/></td>
	          		<td><s:property value="rtype"/></a></td>
	          		<td><s:property value="dispose"/></td>
	          		<td><s:property value="starttime"/></td>
	          		<td><s:property value="endtime"/></td>
	          		<td><a href="roomUpdatepage.action?room.id=<s:property value="id"/>">修改</a>
	          			<a href="roomDelete.action?room.id=<s:property value="id"/>">删除</a></td>
	        	</tr>
	        </s:iterator>
		</table>

</body>
</html>