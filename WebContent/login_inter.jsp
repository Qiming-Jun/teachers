<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>

<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="hitcso.ico" type="image/x-icon"/>
<title>欢迎使用教师信息管理系统</title>
<style type="text/css">
html,body{
    margin:0;
    padding:0;
    list-style:none;
}
h1{
    font-family:"华云彩体"; 
    font-size:20px;
    margin-bottom:0;
    position:relative;
    top:0px;
    left:40px;
}
#htl{
/*     background-color:#FF0000; */
    width:50%;
    boder:1px solid #000000;
    min-height:500px;
    height:auto;
    position:relative;
    top:0px;
    left:0px;
    float:left;
}
#htr{
    /*background-color:black;*/
    width:50%;
    boder:1px solid #000000;
    min-height:500px;
    height:auto;
    position:relative;
    top:0px;
    left:0px;
    float:left;
}
#dht{
    padding:10px;
    boder:1px solid#000000; 
    margin:0px;
}
</style>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
function jump()
{
	document.form1.action = "teacher_one.jsp";
	}
function check()
{
	fr = document.form1;
	var city = document.getElementById("color");
	var sun = fr.username.value;
	if(fr.username.value=="")
		{
		alert("用户名不能为空！");
		fr.username.focus();
		return false;
		}
	if(fr.password.value=="")
		{
		alert("密码不能为空！")
		fr.password.focus();
		return false;
		}
	if(color.options[color.selectedIndex].text=="请选择")
		{
		alert("请选择您的角色！");
		fr.color.focus();
		return false;
		}
	/*$.ajax({
        type: "get",//数据发送的方式（post 或者 get）
        url: "http://localhost:8080/Teacher_management__system/hello.action",//要发送的后台地址
        data: {"sun":"1"},//要发送的数据（参数）格式为{'val1':"1","val2":"2"}
        dataType: "json",//后台处理后返回的数据格式
        success: function (data) {//ajax请求成功后触发的方法
           alert('请求成功');
        },
        error: function (msg) {//ajax请求失败后触发的方法
            alert('错误');//弹出错误信息
        }
    });
	//fr.submit();*/
	}
</script>
</head>
<body class="img-circle" background="hitlibe.jpg"style="background-repeat:no-repeat ;background-size:100% 100%; background-attachment:fixed;">
<!--canvas id="myCanvas" width="1350" height="1000"
style="border:1px solid black">
your browser does not support the canvas element.
</canvas-->
<div id="dht">
<h1><img src="headphoto.png" width="400" height="70"/></h1></div>
<hr />
<div style="width:100%;min-height:500px;height:auto;position:relative;top:0px;left:0px;">
<div id="htl">
<div style="width:60%;min-height:300px;height:auto;background-color:rgba(255,245,238,0.5);position:relative;top:60px;left:270px">
<h4 style="position:relative;top">注意事项：</h4>
<ol style="list-style-type:decimal">
<li>
账号即为学号/职工号。
</li>
<br>
<li>
若还未注册，请先进行注册。
</li>
<br>
<li>
此网页为课程项目所需，不妥之处请见谅。
</li>
<br>
<li>
记住自己的密码。
</li>
<br>
</ul>
</div>
</div>
<div id="htr">
<div style="width:60%;min-height:300px;height:auto;background-color:rgba(255,245,238,0.5);position:relative;top:63px;left:0px;">
<h3>用户登录</h3>
<form action="hello.action" name="form1" method="get">
<p>用户名：<input type="text" name="username" id=name/></p>
<p>密    码：<input type="password" name="password" id=password /></p>
<p><label>角    色：</label>
<select name="color" id="color">
<option value="">请选择</option>
<option value="教师" style="color:#000000;font-size:15px;font-weight:bolder;font-family:"幼圆";">教师</option>
<option value="学生" style="color:#000000;font-size:15px;font-weight:bolder;font-family:"幼圆";">学生</option>
</select>
</p>
<p><input type=submit value="注册" onClick="jump()"></input>
<input type=submit value="登录" onClick="return check()"></input></p>
</form>
</div>
</div>
</div>
<hr />
<div id="dht">
<p style="position:relative;top:0px;left:200px;">Copyright © 2009 all rights reserved. Power by 上海众臻信息科技有限公司
Please contact Us : market@sportoa.com
Tel : 021-54933212
</p>
</div>
<script>
var validator = "${attr.validator}";
//cum = document.getElementById('pwd');;
//alert(validator);
if(validator=="ERROR")
	{
	alert("用户名或密码错误！");
	}
</script>
</body>
</html>