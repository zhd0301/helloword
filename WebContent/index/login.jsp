<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>会员登录</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style>
    .imgBg2{
        -webkit-filter: brightness(0.8);
        filter: brightness(0.8);
    }
</style>
<body>

<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>

<div class="container-fluid imBg2" style="padding-left: 0px;">
    <img src="../img/loginbg.jpg" class="imgBg2" style="width: 100%; height: 500px; position: absolute">
    <div class="col-md-8"></div>
    <div class="col-md-4 " style="width: 370px; height: 270px; border-radius: 5px; background-color: white;
        margin-top: 80px">
        <p style="font-size: 25px; padding-top: 25px;">会员登录</p>
        <form class="form-horizontal" action="login.action" name="login">
            <div class="form-group">
                <label class="col-sm-3 control-label" style=" line-height: 17px">用户名:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="customer.username" placeholder="请输入用户名">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label" style=" line-height: 17px;
                    text-align: center;">密&nbsp;&nbsp;&nbsp;码:</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" name="customer.password" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group" style="padding-top: 20px">
                <div class="col-md-4 col-md-offset-3">
                    <input type="submit" class="btn-warning" value="登录" style="width: 180px;
                        height: 30px">
                </div>
            </div>
        </form>
    </div>
</div>

<div class="container-fluid" style="padding-top: 210px; background-color: antiquewhite">
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