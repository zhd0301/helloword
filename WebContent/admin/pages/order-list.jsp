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
		<tr height=28><td background="images/title_bg1.jpg">当前位置 &raquo; 订单管理</td></tr>
		<tr><td bgcolor=#b1ceef height=1></td></tr>
		<tr height=20><td background="images/shadow_bg.jpg"></td></tr>
	</table>

	<%-- <table><tr><td>	
		<form action="orderByFlower.action">
			<select name="flowerid" style="width:100px">
				<option value="0">全部</option>
				<s:iterator value="#request.flowers">
					<option value=<s:property value="id"/> <s:if test="id==flowerid">selected="selected"</s:if>>
						<s:property value="name"/>
					</option>
				</s:iterator>
			</select><input type="submit" value="按商品查询">
		</form></td><td>	
		
		<form action="orderByCustomer.action">
			<select name="customerid" style="width:100px">
				<option value="0">全部</option>
				<s:iterator value="#request.customers">
					<option value=<s:property value="id"/> <s:if test="id==customerid">selected="selected"</s:if>>
						<s:property value="username"/>
					</option>
				</s:iterator>
			</select><input type="submit" value="按顾客查询">
		</form></td></tr>
		
	</table><br> --%>
	
		<table border="1" class="listtable">
			<tr>
				<th>订单号</th><th>房间号</th><th>类型</th><th>金额</th><th>入住时间</th><th>离店时间</th><!-- <th>发货状态</th><th>操作</th> -->
			</tr>
			<!-- 用struts的iterator标签遍历集合 -->
			<s:iterator value="#request.orders">
	          	<tr>
	          		<td><s:property value="ouid"/></td>
	          		<td><s:property value="room.rid"/></a></td>
	          		<td><s:property value="room.rtype"/></td>
	          		<td><s:property value="room.starttime"/></td>
	          		<td><s:property value="room.endtime"/></td>
	          		<td>未处理</td>
	          		<td><a href="orderDispose.action?id=<s:property value="id"/>">同意</a>&nbsp;
	          				<a href="orderRemove.action?id=<s:property value="id"/>">删除</a></td>
	        	</tr>
	        </s:iterator>
	        
		</table><br><br>

</body>
</html>