<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>房间信息界面</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style></style>
<body>
<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>

<div class="container-fluid">
    <div class="col-md-1" ></div>
    <div class="col-md-8" style="padding-top: 30px">
        <div class="container-fluid" style="padding-left: 40px">
            <h3>东选山师东路店</h3>
        </div>
        <!--<div class="container-fluid"></div>-->
        <div class="container-fluid" style="padding-top: 15px">
            <div class="col-sm-4">
                <img class="img-rounded" src="../img/room1.jpg" style="width: 285px; height: 270px">
            </div>
            <div class="col-sm-7" style="padding-top: 30px; padding-left: 30px " >
                <img src="../img/bed1.jpg" style="width: 155px; height: 110px;">
                <img src="../img/bed2.jpg" style="width: 155px; height: 110px;">
                <img src="../img/kitchen1.jpg" style="width: 155px; height: 110px;">
                <img src="../img/kitchen2.jpg" style="width: 155px; height: 110px;">
                <img src="../img/bed2.jpg" style="width: 155px; height: 110px;">
                <img src="../img/bed1.jpg" style="width: 155px; height: 110px;">
            </div>
            <div class="col-sm-3">
            </div>
        </div>
        
    </div>
    <div class="col-md-2"></div>
</div>
<div class="container-fluid">
    <div class="col-md-1"></div>
    <div class="col-md-8" style="padding-top: 30px">
    <form class="form-horizontal" action="room_order.action" name="room_order">
    	<table class="table table-hover" style="border: 1px solid black">
            <thead>
            <tr>
                <th>房间类型</th>
                <th>床型</th>
                <th>早餐</th>
                <th>门市价</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div >
                            <img src="../img/room2.jpg" style="width: 60px; height: 60px">
                            <i>高级大床房</i>
                        </div>
                    </td>
                    <td style="line-height: 60px">大床房</td>
                    <td style="line-height: 60px">赠送</td>
                    <td style="line-height: 60px">
                        <span >￥
                            <i>688</i>
                        </span>
                    </td>
                    <td style="line-height: 50px">
                        <a class="btn btn-primary" href="room_detail.action" style="width: 90px; height: 32px">预订</a>
                    </td>
                </tr>
            </tbody>
            <tbody>
            <tr>
                <td>
                    <div >
                        <img src="../img/room2.jpg" style="width: 60px; height: 60px">
                        <i>高级双床房</i>
                    </div>
                </td>
                <td style="line-height: 60px">大床房</td>
                <td style="line-height: 60px">赠送</td>
                <td style="line-height: 60px">
                        <span >￥
                            <i>688</i>
                        </span>
                </td>
                <td style="line-height: 50px">
                    <a class="btn btn-primary" href="#" style="width: 90px; height: 32px">预订</a>
                </td>
            </tr>
            </tbody>
            <tbody>
            <tr>
                <td>
                    <div >
                        <img src="../img/room2.jpg" style="width: 60px; height: 60px">
                        <i>豪华大床房</i>
                    </div>
                </td>
                <td style="line-height: 60px">大床房</td>
                <td style="line-height: 60px">赠送</td>
                <td style="line-height: 60px">
                        <span >￥
                            <i>688</i>
                        </span>
                </td>
                <td style="line-height: 50px">
                    <a class="btn btn-primary" href="#" style="width: 90px; height: 32px">预订</a>
                </td>
            </tr>
            </tbody>
            <tbody>
            <tr>
                <td>
                    <div >
                        <img src="../img/room2.jpg" style="width: 60px; height: 60px">
                        <i>豪华双床房</i>
                    </div>
                </td>
                <td style="line-height: 60px">大床房</td>
                <td style="line-height: 60px">赠送</td>
                <td style="line-height: 60px">
                        <span >￥
                            <i>688</i>
                        </span>
                </td>
                <td style="line-height: 50px">
                    <a class="btn btn-primary" href="#" style="width: 90px; height: 32px">预订</a>
                </td>
            </tr>
            </tbody>
            <tbody>
            <tr>
                <td>
                    <div >
                        <img src="../img/room2.jpg" style="width: 60px; height: 60px">
                        <i>总统套房</i>
                    </div>
                </td>
                <td style="line-height: 60px">大床房</td>
                <td style="line-height: 60px">赠送</td>
                <td style="line-height: 60px">
                        <span >￥
                            <i>688</i>
                        </span>
                </td>
                <td style="line-height: 50px">
                    <a class="btn btn-primary" href="#" style="width: 90px; height: 32px">预订</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
        
    </div>
</div>
<div class="container-fluid">
    <div class="col-md-1"></div>
    <div class="col-md-8">
        <label style="font-size: 25px">用户点评:</label>
        <table class="table table-hover">
            <tbody>
                <tr>
                    <td>
                        <div class="col-md-2">
                            <img src="../img/user.png">
                            <span>王*</span>
                        </div>
                        <div class="col-md-6 col-md-offset-1" style="padding-top: 15px">
                            <span style="">酒店不错！前台服务态度好，以后还会来的</span>
                        </div>
                        <div class="col-md-3" style="padding-top: 15px">
                            <span >2019-03-28 08:59:34</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="col-md-2">
                            <img src="../img/user.png">
                            <span>张**</span>
                        </div>
                        <div class="col-md-6 col-md-offset-1" style="padding-top: 15px">
                            <span style="">酒店不错！前台服务态度好，以后还会来的</span>
                        </div>
                        <div class="col-md-3" style="padding-top: 15px">
                            <span >2019-03-28 08:59:34</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="col-md-2">
                            <img src="../img/user.png">
                            <span>二**</span>
                        </div>
                        <div class="col-md-6 col-md-offset-1" style="padding-top: 15px">
                            <span style="">酒店不错！前台服务态度好，以后还会来的</span>
                        </div>
                        <div class="col-md-3" style="padding-top: 15px">
                            <span >2019-03-28 08:59:34</span>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="container-fluid">
    <div class="col-md-1"></div>
    <div class="col-md-7">
        <label style="font-size: 25px">发表评论：</label>
        <form class="form-horizontal">
            <div class="form-group" style="padding: 10px 0px 10px 20px ">
                <textarea class="form-control" rows="6" cols="5" name="textarea" placeholder="发表你的评论"
                    ></textarea>
            </div>
            <div class="form-group" style="float: right; margin-right: 10px">
                <input class="btn btn-primary" value="提交内容" type="submit">
            </div>
        </form>

    </div>
</div>

<div class="container-fluid" style="padding-top: 50px; background-color: antiquewhite">
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