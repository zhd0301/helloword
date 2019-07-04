<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<head>
	<meta http-equiv=content-type content="text/html; charset=UTF-8">
	<link href="css/admin.css" type="text/css" rel="stylesheet">

	<!-- 开合左侧菜单栏 -->
	<script type="text/javascript">
		function expand(el){
			childObj = document.getElementById("child" + el);
			if (childObj.style.display == 'none')
			{childObj.style.display = 'block';}
			else
			{childObj.style.display = 'none';}
			return;
		}
	</script>
</head>
<body>
	<table height="100%" cellspacing=0 cellpadding=0 width=170 background="images/menu_bg.jpg" border=0>
		<tr>
		<td valign=top align="center">
			<!--菜单栏上部-->
			<table cellspacing=0 cellpadding=0 width="100%" border=0>
				<tr><td height=20></td></tr>
			</table>
			<!-- 房间信息管理：输入需要修改的房间信息（包括房号，类型，价格，预订状态等），
				管理人员点击提交向后台数据库提交信息。提交成功的话，页面显示修改信息成功，否则显示数据库操作失败。 -->
			<!-- 酒店信息管理 -->
			<!-- 订单信息查询 ：页面显示已预订订单，其中包括房号，类型，金额，入住时间，离店时间等。-->
			<!-- 用户信息查询 ：页面显示出用户ID,真实姓名，身份证号，联系地址，联系电话。管理员可以进行用户的删除、
				查找动作。删除成功后，页面显示删除成功。-->
			
			<!--订单信息管理:页面显示已预订订单，其中包括房号，类型，金额，入住时间，离店时间等。-->
			<table cellspacing=0 cellpadding=0 width=150 border=0>
				<tr height=22>
					<td style="padding-left: 30px" background="images/menu_bt.jpg">
						<a class=menuparent onclick=expand(1) href="javascript:void(0);">订单管理</a>
					</td>
				</tr>
				<tr height=4><td></td></tr>
			</table>
				<!--菜单子项-->
				<table id=child1 cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="orderList.action" target=main>未处理订单</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="orderLists.action" target=main>已处理订单</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
				</table>
			
			<!-- 房间信息管理：输入需要修改的房间信息（包括房号，类型，价格，预订状态等），
				管理人员点击提交向后台数据库提交信息。提交成功的话，页面显示修改信息成功，否则显示数据库操作失败。 -->
			<table cellspacing=0 cellpadding=0 width=150 border=0>
				<tr height=22>
					<td style="padding-left: 30px" background="images/menu_bt.jpg">
						<a class=menuparent onclick=expand(2) href="javascript:void(0);">房间信息管理</a>
					</td>
				</tr>
				<tr height=4><td></td></tr>
			</table>
				<!--菜单子项2-->
				<table id=child2 cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="roomList.action" target=main>房间信息</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="roomAddpage.action" target=main>房间类型增加</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
				</table>

			<!--用户信息管理:页面显示出用户ID,真实姓名，身份证号，联系地址，联系电话。管理员可以进行用户的删除、
				查找动作。删除成功后，页面显示删除成功。-->
			<table cellspacing=0 cellpadding=0 width=150 border=0>
				<tr height=22>
					<td style="padding-left: 30px" background="images/menu_bt.jpg">
						<a class=menuparent onclick=expand(3) href="javascript:void(0);">用户信息管理</a>
					</td>
				</tr>
				<tr height=4><td></td></tr>
			</table>
				<!--菜单子项3-->
				<table id=child3 cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="customerList.action" target=main>用户列表</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="customerAddpage.action" target=main>添加用户</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
				</table>
				
			<!--菜单栏4-->
			<!-- <table cellspacing=0 cellpadding=0 width=150 border=0>
				<tr height=22>
					<td style="padding-left: 30px" background="images/menu_bt.jpg">
						<a class=menuparent onclick=expand(4) href="javascript:void(0);">掌柜管理</a>
					</td>
				</tr>
				<tr height=4><td></td></tr>
			</table> -->
				<!--菜单子项4-->
				<!-- <table id=child4 cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="managerList.action" target=main>掌柜列表</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
					<tr height=20>
						<td align="center" width=30><img height=9 src="images/menu_icon.jpg" width=9></td>
						<td><a class=menuchild href="managerAddpage.action" target=main>添加掌柜</a></td>
					</tr>
					<tr height=4><td colspan=2></td></tr>
				</table> -->

	
		</td>
		<td width=1 bgcolor=#d1e6f7></td>
		</tr>
	</table>
</body>



