<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>

<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="hitcso.ico" type="image/x-icon"/>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>欢迎使用教师信息管理系统</title>
<style type="text/css">
html,body{
    margin:0;
    padding:0;
    list-style:none;
}
#dht{
    padding:0px;
    boder:1px solid#000000; 
    margin:0px;
}
</style>
</head>
<body class="img-circle" background="hitlibe.jpg"style="background-repeat:no-repeat ;background-size:100% 100%; background-attachment:fixed;">
<div id="dht">
<h1 style="margin:0px;padding:0px;">
<img src="Teaphoto.png" width="400" height="60" style="position:relative;top:8px;left:10px;"/>
<%String colour;%>
<!--%
request.setCharacterEncoding("UTF-8");
String character  =  new  String(request.getParameter("color").getBytes("ISO-8859-1"), "utf-8");
//session.setAttribute("color",character); 
System.out.println(character);
//${color}%-->
<span style="position:relative;top:10px;left:700px;font-size:18pt;">
您好,<s:property value="color" />!
</span>
<a href="login_inter.jsp">
<img src="exit.gif" width="30" height="30" style="position:relative;top:10px;left:700px;"/>
</a>
<a href="login_inter.jsp" style="position:relative;top:10px;left:700px;font-size:18pt;font-color:black;">
退出！
</a>
</h1>
</div>
<hr />
<div style="width:100%;min-height:500px;height:auto;background-color:rgba(255,245,238,0.5);position:relative;top:0px;left:0px;">
<div style="width:20%;height:150px;border:1px solid #000;position:relative;top:100px;left:150px;">
<p>功能选择：</p>
<p><a href="helload.action?type=1&username=<s:property value="tecinf.teacherId" />">个人信息查看及修改</a></p>
<p><a href="helload.action?type=2&username=<s:property value="tecinf.teacherId" />">个人基金和科研成果查看及修改</a></p>
<p><a href="helload.action?type=3&username=<s:property value="tecinf.teacherId" />">个人行程查看及修改</a></p>
<p><a href="helload.action?type=4&username=<s:property value="tecinf.teacherId" />">预约查看</a></p>
</div>
<div class="table-responsive" style="width:40%;min-height:300px;height:auto;position:relative;top:-100px;left:650px;">          
       <table class="table table-striped table-bordered">
         <thead>
           <tr>
			   <th>教师基本信息：</th>
           </tr>
         </thead>
         <tbody>
           <tr>
             <td>教师职工号：</td>
           <td><s:property value="tecinf.teacherId" /></td>
           </tr>
           <tr>
             <td>姓名：</td>
             <td><s:property value="tecinf.teacherName" /></td>
           </tr>
           <tr>
             <td>性别：</td>
             <td><s:property value="tecinf.teacherGender" /></td>
           </tr>
           <tr>
             <td>出生年月：</td>
             <td><s:property value="tecinf.teacherBirthday" /></td>
           </tr>
           <tr>
             <td>年龄：</td>
             <td><s:property value="tecinf.teacherAge" /></td>
           </tr>
           <tr>
             <td>学院：</td>
             <td><s:property value="tecinf.teacherCollege" /></td>
           </tr>
           <tr>
             <td>手机号：</td>
             <td><s:property value="tecinf.teacherPhone" /></td>
           </tr>
           <tr>
             <td>邮箱：</td>
             <td><s:property value="tecinf.teacherEmile" /></td>
           </tr>
           <tr>
             <td>个人简介：</td>
             <td style="WORD-WRAP: break-word;width:78%;min-height:100px;height:auto;"
             ><s:property value="tecinf.teacherResume" /></td>
           </tr>
         </tbody>
       </table>
      </div>
</div>
<hr />
<div id="dht">
<p style="position:relative;top:0px;left:200px;">Copyright © 2009 all rights reserved. Power by 上海众臻信息科技有限公司
Please contact Us : market@sportoa.com
Tel : 021-54933212
</p>
</div>
</body>
</html>