<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="hitcso.ico" type="image/x-icon"/>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="http://homepage.hit.edu.cn/web/css/bootstrap.css">
<link rel="stylesheet" href="http://homepage.hit.edu.cn/web/css/shouyestyle.css">
<link rel="stylesheet" href="http://homepage.hit.edu.cn/web/css/font-style.css">
<link rel="stylesheet" href="http://homepage.hit.edu.cn/web/css/flexslider.css" type="text/css">

<link href="web/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="web/css/css.css" rel="stylesheet" type="text/css">
<link href="web/css/shouye-style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="web/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
<script type="text/javascript" src="web/js/jquery.scrollTo-1.4.2-min.js"></script> 
<script type="text/javascript" src="web/js/waypoints.min.js"></script>

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
    height:50px;
    padding:0px; 
    margin:0px;
    background-color:black;
}
.clear{clear:both;}
</style>
</link>
</head>
<body>

<div style="width:100%;min-height:700px;height:auto;margin:0px;padding:0px;background-color:rgba(255,245,238,0.5);">

<div style="width:100%;height:85px;margin:0px;padding:0px;background-color:rgba(0,0,0,1);">
<h1 style="margin:0px;padding:0px;">
<img src="Teaphoto.png" width="400" height="60" style="position:relative;top:8px;left:10px;"/>
<!--%String character = "world";
character  =  new  String(request.getParameter("character").getBytes("ISO-8859-1"), "utf-8");
System.out.println(character);%-->
<span style="position:relative;top:10px;left:700px;font-size:18pt;color:white;">
您好,<!--%=character%-->!
</span>
<a href="login_inter.jsp">
<img src="exit.gif" width="30" height="30" style="position:relative;top:10px;left:700px;"/>
</a>
<a href="login_inter.jsp" style="position:relative;top:10px;left:700px;font-size:18pt;font-color:black;">
退出！
</a>
</h1>
</div>

<div style="width:100%;min-height:700px;height:auto;margin:0px;padding:0px;">

<div style="width:60%;min-height:600px;height:auto;margin:0px;padding:0px;position:relative;top:30px;left:280px;background-color:white;">

<div class="neirong2_box2_box" style="width:100%;position:relative;top:0px;left:10px;">
          <span style="font-size:initial;position:relative;top:5px;">姓氏字母： </span>
          <ul>
           <li><a href="lettersearch.action?letter=a&username=<s:property value="username" />">A</a></li>
            <li><a href="lettersearch.action?letter=b&username=<s:property value="username" />">B</a></li>
            <li><a href="lettersearch.action?letter=c&username=<s:property value="username" />">C</a></li>
            <li><a href="lettersearch.action?letter=d&username=<s:property value="username" />">D</a></li>
            <li><a href="lettersearch.action?letter=e&username=<s:property value="username" />">E</a></li>
            <li><a href="lettersearch.action?letter=f&username=<s:property value="username" />">F</a></li>
            <li><a href="lettersearch.action?letter=g&username=<s:property value="username" />">G</a></li>
            <li><a href="lettersearch.action?letter=h&username=<s:property value="username" />">H</a></li>
            <li><a href="lettersearch.action?letter=i&username=<s:property value="username" />">I</a></li>
            <li><a href="lettersearch.action?letter=j&username=<s:property value="username" />">J</a></li>
            <li><a href="lettersearch.action?letter=k&username=<s:property value="username" />">K</a></li>
            <li><a href="lettersearch.action?letter=l&username=<s:property value="username" />">L</a></li>
            <li><a href="lettersearch.action?letter=m&username=<s:property value="username" />">M</a></li>
            <li><a href="lettersearch.action?letter=n&username=<s:property value="username" />">N</a></li>
            <li><a href="lettersearch.action?letter=o&username=<s:property value="username" />">O</a></li>
            <li><a href="lettersearch.action?letter=p&username=<s:property value="username" />">P</a></li>
            <li><a href="lettersearch.action?letter=q&username=<s:property value="username" />">Q</a></li>
            <li><a href="lettersearch.action?letter=r&username=<s:property value="username" />">R</a></li>
            <li><a href="lettersearch.action?letter=s&username=<s:property value="username" />">S</a></li>
            <li><a href="lettersearch.action?letter=t&username=<s:property value="username" />">T</a></li>
            <li><a href="lettersearch.action?letter=u&username=<s:property value="username" />">U</a></li>
            <li><a href="lettersearch.action?letter=v&username=<s:property value="username" />">V</a></li>
            <li><a href="lettersearch.action?letter=w&username=<s:property value="username" />">W</a></li>
            <li><a href="lettersearch.action?letter=x&username=<s:property value="username" />">X</a></li>
            <li><a href="lettersearch.action?letter=y&username=<s:property value="username" />">Y</a></li>
            <li><a href="lettersearch.action?letter=z&username=<s:property value="username" />">Z</a></li>
          </ul>
        </div>
<center><hr style="margin:0px;padding:0px;width:98%;height:3px;border:none;border-top:3px double black;positive:absolute;top:600px;"/></center>

<div class="neirong2_box2_box" style="width:100%;position:relative;top:0px;left:10px;">
          <span style="font-size:initial;position:relative;left:400px;">查找教师： </span>
          <form action="SearchTec.action?username=<s:property value="username" />" name="form1" method="get">
          <input id="search" name="search" type="text" class="wenbenkuang" style="width:260px;position:relative;left:400px;"></input>
          <input type="hidden" name="username" id=username value=<s:property value="username" />>
          <input type=submit value="搜  索" class="sousuoanniu" style="width:50px;height:auto;font-size:inherit;position:relative;top:-5px;"></input>
        </form>
        </div>
        <center><hr style="margin:0px;padding:0px;width:100%;height:3px;border:none;border-top:3px double black;positive:absolute;top:600px;"/></center>

<div style="position:relative;">
<fieldset>
<div id="div_col" class="col-lg-12 col-xs-12 yh">
<c:forEach var="item" items="${teacherlist}" varStatus="status">
      <!--span style="word-wrap:break-word;padding-left:50px;padding-right:50px;vertical-align:top;"><a href="findbook.action?title=${item}">${item}</a></span-->
      <div class="panel" style="word-wrap:break-word;width:100px;min-height:60px;height:auto;vertical-align:top;float:left;padding-right:20px;">
      <a href="SearchTec.action?search=${item}&username=<s:property value="username" />"><h5 class="head">${item}</h5></a></div>
</c:forEach>
</div>
</fieldset>
</div>



</div>

</div>

<div id="dht">
<span style="position:relative;top:15px;left:200px;color:white;">Copyright © 2009 all rights reserved. Power by 上海众臻信息科技有限公司
Please contact Us : market@sportoa.com
Tel : 021-54933212
</span>
</div>

</div>

</body>
</html>

