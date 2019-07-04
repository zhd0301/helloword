<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单查询页面</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style></style>
<body>
<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>


    <!--2.订单信息-->
<div class="container-fluid" style="">
    <div class="col-md-2"></div>
    <div class="col-md-7" style="border: 2px solid floralwhite; margin-top: 30px;">
    	<div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            <div class="col-sm-3">序号</div>
            <div class="col-sm-6" >订单编号</div>
            <div class="col-sm-3" >订单时间</div>
        </div>
    	<s:iterator value="#request.orders">
    		<div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            	<div class="col-md-2"><s:property value="o_id"/></div>
            	<div class="col-md-6"><s:property value="ouid"/></div>
            	<div class="col-md-4"><s:property value="otime"/></div>
        	</div>
        </s:iterator>
       
    </div>
    <div class="col-md-3"></div>
</div>
    <div class="container-fluid" style="padding-top: 60px; background-color: antiquewhite">
        <div style="text-align: center;margin-top: 5px;">
            <ul class="list-inline">
                <li><a>东选介绍</a></li>
                <li><a>酒店加盟</a></li>
                <li><a>职位招聘</a></li>
                <li><a>意见反馈</a></li>
                <li><a>联系我们</a></li>
            </ul>
        </div>
        <div style="text-align: center;padding-bottom: 40px">
            Copyright &copy; 2019-2019 东选酒店 版权所有
        </div>
    </div>

</body>
</html>