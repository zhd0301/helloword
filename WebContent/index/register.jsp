<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>会员注册</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>

<style>


</style>
</head>
<body>
<!-- 1.header -->
<jsp:include page="/index/header.jsp"/>

<div class="container-fluid" style="background-color: orange">
    <div class="col-md-2" style=""></div>
    <div class="col-md-8" style="background-color: white; ">
        <form class="form-horizontal" action="register.action" name="register">
            <div class="form-group" style="padding-top: 40px; background-color: orange"></div>
            <!--<div class="form-group" style="padding-top: 30px"></div>-->
            <div class="form-group" style="">
                <label for="username" style="text-align: center; padding-top: 5px" class="col-sm-2">用户名：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="customer.username" placeholder="用户名">
                </div>
            </div>
            <div class="form-group" style="">
                <label style="text-align: center; padding-top: 7px" class="col-sm-2">密码：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="customer.password" placeholder="密码">
                </div>
            </div>
            <div class="form-group" style="">
                <label style="text-align: center; padding-top: 7px" class="col-sm-2">确认密码：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="请再次输入密码">
                </div>
            </div>
            <div class="form-group" style="">
                <label style="text-align: center; padding-top: 7px" class="col-sm-2">身份证号：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="customer.idcard" placeholder="身份证号">
                </div>
            </div>
            <div class="form-group" style="">
                <label style="text-align: center; padding-top: 7px" class="col-sm-2">真实姓名：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="customer.realname" placeholder="真实姓名">
                </div>
            </div>
            <div class="form-group" style="">
                <div class="col-sm-4 col-sm-offset-5">
                    <input type="submit" class="btn-warning" value="注册" style="width: 80px;height: 30px">
                </div>
            </div>
            <div class="form-group" style="background-color: orange"></div>
            <div class="form-group" style="padding-bottom: 20px; background-color: orange"></div>
        </form>
    </div>
    <div class="col-md-2" style="background-color: orange"></div>
</div>
<div class="container-fluid" style="padding-top: 120px; background-color: antiquewhite">
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
<!--<div class="container" style="width:100%;">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
            <font>会员注册</font>USER REGISTER
            <form class="form-horizontal" style="margin-top:5px;">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="username" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="confirmpwd" placeholder="请输入确认密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="usercaption" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="usercaption" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="form-group opt">
                    <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-6">
                        <label class="radio-inline">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-2 control-label">出生日期</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control"  >
                    </div>
                </div>

                <div class="form-group">
                    <label for="date" class="col-sm-2 control-label">验证码</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  >

                    </div>
                    <div class="col-sm-2">
                        <img src="./image/captcha.jhtml"/>
                    </div>

                </div>

                &lt;!&ndash;<div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit"  width="100" value="注册" name="submit" border="0"
                               style="background: url('./images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
                    </div>
                </div>&ndash;&gt;
            </form>
        </div>

        <div class="col-md-2"></div>

    </div>
</div>



<div style="margin-top:50px;">
    <img src="./image/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
</div>

<div style="text-align: center;margin-top: 5px;">
    <ul class="list-inline">
        <li><a>关于我们</a></li>
        <li><a>联系我们</a></li>
        <li><a>招贤纳士</a></li>
        <li><a>法律声明</a></li>
        <li><a>友情链接</a></li>
        <li><a target="_blank">支付方式</a></li>
        <li><a target="_blank">配送方式</a></li>
        <li><a>服务声明</a></li>
        <li><a>广告声明</a></li>
    </ul>
</div>-->

</body></html>

