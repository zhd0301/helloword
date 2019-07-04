<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>

</head>
<style>
    .imgBg1{
        /* 把图像调暗 */
        -webkit-filter: brightness(0.7);
        filter: brightness(0.7);
    }
</style>
<body>

<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>
<div class="container-fluid" style="padding-left: 0px;">
            <img class="imgBg1" src="../img/header.jpg" style="width: 100%; height: 520px; position: absolute">
    <div class="col-md-6 col-md-offset-3" style="font-size: 35px; text-align: center; padding-top: 100px;">
                <label>爱干净</label>
                <label>住东选</label>
    </div>
    <div class="col-md-6 col-md-offset-4" style="font-size: 25px; text-align: center; padding-right: 75px ">
                <p>像家一样的感觉</p>
    </div>
    <div class="container-fluid" style="">
        <div class="col-md-3 col-md-offset-3" style="width: 200px; height: 70px;
                background-color: ghostwhite; margin-top: 60px;">
            <div class="container-fluid " style="text-align: center; padding-top: 20px">
                <div class="glyphicon glyphicon-map-marker" style="font-size: 20px; padding-right: 15px"></div>济南
            </div>

        </div>
        <a href="room_querypage.action" > 
        <div class="col-md-3 " style="width: 200px; height: 70px;
                background-color: ghostwhite; margin-top: 60px; margin-left: 1px">
            <form class="form-horizontal">
                <div class="form-group" style="padding:10px 10px 10px 10px">
                    <span style="">入住日期</span>
                    <input type="date" id="startDate" onchange="time(this.id)">
                </div>
            </form>
        </div>
        <div class="col-md-3 " style="width: 200px; height: 70px;
                background-color: ghostwhite; margin-top: 60px; margin-left: 1px">
            <form class="form-horizontal">
                <div class="form-group" style="padding:10px 10px 10px 10px">
                    <span style="">离店日期</span>
                    <input type="date" id="stopDate" onchange="time(this.id)">
                </div>
            </form>
        </div>
        <!-- <a href="room_querypage.action" > -->
            <div class="col-md-3 " style="width: 200px; height: 70px;
                        background-color: #a11661; margin-top: 60px; margin-left: 1px">
                <span class="glyphicon glyphicon-search" aria-hidden="true"
                          style="color: white; font-size: 20px; padding-top: 16px; padding-left: 10px"></span>
                <span style="font-size: 25px; line-height: 65px; color: white; padding-left: 8px ">搜索酒店</span>
            </div>
        </a>
    </div>
</div>
	<!-- footer -->
    <!--底部声明-->
<div class="container-fluid" style="padding-top: 250px; background-color: antiquewhite">
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

    <!--<div class="row">
        <img style="width: 100%; height: 100%;position: relative;margin-top: 220px" src="../img/service.PNG">
    </div>
    <div class="row">
        <div class="col-md-12">
            <pre style="font-size: 25px">
                                                                华住会介绍

                        华住会，是华住酒店集团会员俱乐部，也是一个高效、简单、温情的酒店预订平台，拥有美爵、VUE、禧玥、诺富特、
                    美居、漫心、全季、桔子水晶、桔子精选、CitiGo、星程、宜必思尚品、宜必思、汉庭优佳、汉庭、怡莱、海友等
                    知名酒店品牌，满足从高端到平价、商务与休闲的多元化需求，为全球超过1亿会员提供住宿、出行、购物等服务，
                    是您聪明、温暖、长情的出行伴侣。

                                                                华住会服务

                        官方优惠：无论去往何处，都可以通过华住会APP找到目的地就近的酒店，享受华住会员专享的优惠价格；

                        出行一站式：将根据行程，提供酒店、机票、火车票一站式行程助手，提供全程自助服务：选房、续住、
                    一键开票、入住、零秒退房以及航班动态等。

                        自助入住：酒店智能终端机“华掌柜”，从外观设计上看类似iPad，右侧带有身份证刷卡槽。顾客通过预
                    定终端，可全面实现：自助预订、支付、选房、身份证信息读取、登记入住、房卡自动领取、发票直连，使
                    客人的身份证信息可以通过技术安全直接上传系统，将前台办理入住手续的时间从3分钟缩短至30秒，节省消
                    费者大量的等待和交易时间。

                        0秒退房：在办理入住手续时，客人只要把自己的会员卡直接刷成房卡，付清全部房费，就无需支付入住押
                    金，并提前拿到住宿发票，在退房时仅需关上房门即可离店，免除了查房、结账等办理相关手续的时间。没
                    带会员卡的客人在离店时，也只要把房卡投入前台“0秒离店”的盒子里，就可以离店，省去了到前台结账时
                    等待查房和退还押金的时间。

                        发票一键打印：客人预订华住旗下各品牌酒店并完成预付后，即可通过华住官网、App、官方微信等线上平
                    预留企业增值税发票信息，并预约发票。同时，也可于到达酒店后，使用大堂的自助入住终端机“华掌柜”
                    办理入住时预留发票信息。预留过的发票信息也可保存在客人的华住账户中。客人退房前，前往前台一键打
                    印即可完成开票过程。

                        自助选房：客人事先预订酒店，入住当天6:00后点击“自助入住”按钮进入选房页面，即可对酒店楼层和客
                    房布局一览无余，房间位于几楼、是否临街、是否靠近电梯或公用厕所、是否位于拐角等都可以了解，一起
                    住店的同事或亲友也可以自行选择相邻房间，客人可自主选择。

                        积分当钱花：在华住会积分就是钱，100积分等于1块钱。积分可以已七折的价格兑换免房，可以支付机票、摩
                    拜单车骑行，可以在华住商城支付商品。
            </pre>&ndash;&gt;-->

<!--        </div>-->
<!--    </div>-->

</body>
</html>