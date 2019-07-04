<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>酒店预订页面</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style></style>
<body>
<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>


    <!--酒店信息-->
<div class="container-fluid" style="">
    <div class="col-md-2"></div>
    <div class="col-md-7" style="border: 2px solid floralwhite; margin-top: 30px;">
        <!--<form class="form-horizontal">-->
        <div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            <div class="col-sm-3">
                <img class="img-rounded" src="../img/room1.jpg" style="width: 200px; height: 170px; ">
            </div>
            <div class="col-sm-6"  >
                <div class="container-fluid" style="margin:10px 20px 20px 30px">
                    <h3>东选山师东路店</h3>
                </div>
                <div class="container-fluid">
                <span style="color: red; margin: 10px 10px 20px 40px" >
                        <i>￥</i><i style="font-size: 30px">594</i><i>起</i>
                </span>
                </div>
            </div>
            <div class="col-sm-3" >
                <a class="btn btn-primary" href="room_detailpage.action" style="margin: 70px 10px 20px 40px">查看详情</a>
                <!--<div class="container-fluid">-->
                <!--<input type="submit" class="btn-primary" value="查看详情" name="submit"
                       style="margin: 90px 20px 10px 40px ">-->
                <!--<button type="button" class="btn-default" value="查看详情" style="width: 40px; height: 10px"></button>-->
                <!--</div>-->
            </div>
        </div>
        <%-- <div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            <div class="col-sm-3">
                <img class="img-rounded" src="../img/room1.jpg" style="width: 200px; height: 170px; ">
            </div>
            <div class="col-sm-6"  >
                <div class="container-fluid" style="margin:10px 20px 20px 30px">
                    <h3>东选山师东路店</h3>
                </div>
                <div class="container-fluid">
                    <span style="color: red; margin: 10px 10px 20px 40px" >
                            <i>￥</i><i style="font-size: 30px">594</i><i>起</i>
                    </span>
                </div>
            </div>
            <div class="col-sm-3" >
                <!--<div class="container-fluid">-->
                <a class="btn btn-primary" href="#" style="margin: 70px 10px 20px 40px">查看详情</a>
                <!--<button type="button" class="btn-default" value="查看详情" style="width: 40px; height: 10px"></button>-->
                <!--</div>-->
            </div>
        </div>
        <div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            <div class="col-sm-3">
                <img class="img-rounded" src="../img/room1.jpg" style="width: 200px; height: 170px; ">
            </div>
            <div class="col-sm-6"  >
                <div class="container-fluid" style="margin:10px 20px 20px 30px">
                    <h3>东选山师东路店</h3>
                </div>
                <div class="container-fluid">
                    <span style="color: red; margin: 10px 10px 20px 40px" >
                            <i>￥</i><i style="font-size: 30px">594</i><i>起</i>
                    </span>
                </div>
            </div>
            <div class="col-sm-3" >
                <!--<div class="container-fluid">-->
                <a class="btn btn-primary" href="#" style="margin: 70px 10px 20px 40px">查看详情</a>
                <!--<button type="button" class="btn-default" value="查看详情" style="width: 40px; height: 10px"></button>-->
                <!--</div>-->
            </div>
        </div>
        <div class="container-fluid" style="border: 1px solid floralwhite; margin: 20px 20px 20px -5px">
            <div class="col-sm-3">
                <img class="img-rounded" src="../img/room1.jpg" style="width: 200px; height: 170px; ">
            </div>
            <div class="col-sm-6"  >
                <div class="container-fluid" style="margin:10px 20px 20px 30px">
                    <h3>东选山师东路店</h3>
                </div>
                <div class="container-fluid">
                    <span style="color: red; margin: 10px 10px 20px 40px" >
                            <i>￥</i><i style="font-size: 30px">594</i><i>起</i>
                    </span>
                </div>
            </div>
            <div class="col-sm-3" >
                <!--<div class="container-fluid">-->
                <a class="btn btn-primary" href="#" style="margin: 70px 10px 20px 40px">查看详情</a>
                <!--<button type="button" class="btn-default" value="查看详情" style="width: 40px; height: 10px"></button>-->
                <!--</div>-->
            </div>
        </div> --%>


        <!--</form>-->
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