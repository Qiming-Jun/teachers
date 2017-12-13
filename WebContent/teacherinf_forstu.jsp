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
.clear{clear:both;}
</style>

<script type="text/javascript">
	var updated = function(element){
		
		var oldhtml = element.innerHTML;
//		alert(oldhtml);
		var myDate = new Date();
		var zun = myDate.toLocaleDateString();
	//	alert(zun);
		var vun = parseInt(myDate.getDay());
		var id = element.id;
		var kum = oldhtml.indexOf("课");
		lun = parseInt(id);
		zum = parseInt(vun);

//		alert(lun);
		
//		alert(zum);
		
	//	alert(zum+lun);
	//	
	//	alert(kum);
		
		if((zum!=0&&lun<zum)||<s:property value="weeknum"/><15){
			alert("时间已过，禁止预约！");
		}
		else if(oldhtml!="无"){
			alert("此处为老师有其他安排，不能预约！")
		}
		else{
			alert("预约成功，请在预约列表里查看！")
			alert(element.id);
			  
			  $.ajax({ 
				  type:"get",  
				  url:"reserve.action",  
				  dataType:"json",  
				  async:true,
				  data:{  
					  toJsp:$("#toJsp").val(),
					  "reserverows":element.id,
					  "TecID":'<s:property value="tecinf.teacherId" />',
					  "username":'<s:property value="username" />',
					  "weeknum":'<s:property value="weeknum"/>'
				  },  
				  success:function(obj){  
					  console.log(obj)  
							
				  },
			  });  
			  
			  
			  
			   }
			
	}

</script>  


</head>
<body class="img-circle" background="hitlibx.jpg"style="background-repeat:no-repeat ;background-size:100% 100%; background-attachment:fixed;">

<div style="width:100%;min-height:700px;height:auto;margin:0px;padding:0px;background-color:rgba(255,245,238,0.5);">

<div style="width:100%;height:85px;margin:0px;padding:0px;background-color:rgba(0,0,0,1);">
<h1 style="margin:0px;padding:0px;">
<img src="Teaphoto.png" width="400" height="60" style="position:relative;top:8px;left:10px;"/>
<!--%String character = "world";
character  =  new  String(request.getParameter("character").getBytes("ISO-8859-1"), "utf-8");
System.out.println(character);%-->
<span style="position:relative;top:10px;left:700px;font-size:18pt;color:white;">
您好，<s:property value="username" />!
</span>
<a href="login_inter.jsp">
<img src="exit.gif" width="30" height="30" style="position:relative;top:10px;left:700px;"/>
</a>
<a href="login_inter.jsp" style="position:relative;top:10px;left:700px;font-size:18pt;font-color:black;">
退出！
</a>
</h1>
</div>

<div style="width:1200px;min-height:320px;height:auto;position:relative;top:0px;left:80px;margin:0px;padding:0px;background-color:rgba(255,255,255,1);">
<img src="title_picture.jpg" width="1200" height="160" style="position:relative;top:0px;left:0px;"/>
</div>

<div class="container" style="width:1200px;min-height:300px;height:auto;margin:0px;padding:0px;position:relative;top:30px;left:80px;">
	<div class="row clearfix" style="min-height:300px;height:auto;">
		<div class="col-md-12 column" style="min-height:300px;height:auto;">
			<div class="tabbable" id="tabs-656822" style="min-height:300px;height:auto;">
				<ul class="nav nav-pills">
					<li>
						 <a id="1" href="#panel-203039" 

data-toggle="tab" style="">个人信息</a>
					</li>
					<li>
						 <a id="2" href="#panel-206287" 

data-toggle="tab" style="">基金及科研成果</a>
					</li>
					<li>
						 <a id="3" href="#panel-206288" 

data-toggle="tab" style="">行程记录</a>
					</li>
					<li>
						 <a id="4" href="#panel-206240" 

data-toggle="tab" style="">预约查看</a>
					</li>
				</ul>
				<div class="tab-content" style="min-height:300px;height:auto;">
					<div class="tab-pane" id="panel-203039" style="border:1px solid #000;min-height:200px;height:auto;margin-top:20px;background-color:white;">
						<div class="table-responsive" style="width:80%;min-height:260px;height:auto;position:relative;top:20px;left:100px;">          
       <table class="table table-striped table-bordered" id="test">
         <thead>
           <tr>
			   <th style="width:20%;">教师基本信息：</th>
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
             <td>Madison Street</td>
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
             <td><s:property value="tecinf.teacherResume" /></td>
           </tr>
         </tbody>
         <input type="hidden" name="toJsp" id=toJsp value="">
         <!--form action="hi.action" method="get" id="myform" name="myForm">
　　<input type="hidden" name="toJsp" id=toJsp value="">
</form-->
       </table>
      </div>
	</div>
	
	<div class="tab-pane" id="panel-206287" style="border:1px solid #000;min-height:200px;height:auto;margin-top:20px;background-color:white;">
						<div class="table-responsive" style="width:80%;min-height:260px;height:auto;position:relative;top:20px;left:100px;">          
       <table class="table table-striped table-bordered" id="test">
         <thead>
           <tr>
			   <th style="width:20%;">基金及科研成果：</th>
           </tr>
         </thead>
         <tbody>
           <tr>
             <td>教师基金：</td>
             <td><s:property value="toJsp" /></td>
           </tr>
           <tr>
             <td>科研成果：</td>
             <td style="WORD-WRAP: break-word;width:560px;min-height:100px;height:auto;"><s:property value="tecinf.achievement" /></td>
           </tr>
         </tbody>
       </table>
      </div>
	</div>
	
	
	
		<div class="tab-pane" id="panel-206288" style="border:1px solid #000;min-height:200px;height:auto;margin-top:20px;background-color:white;">
		<table class="table table-striped table-bordered" id="test">
         <thead>
           <tr>
			  <td colspan="9" style="height:40px; vertical-align:middle; text-align:center;">
			 <a style="padding-left:50px;padding-right:50px;" href="weekindex1.action?type=3&fbflag=1&weeknum=<s:property value="weeknum" />&username=<s:property value="username" />&TecID=<s:property value="tecinf.teacherId" />">上一周</a> 
			   第<s:property value="weeknum"/>周
			   <a style="padding-left:50px;padding-right:50px;" href="weekindex1.action?type=3&fbflag=0&weeknum=<s:property value="weeknum" />&username=<s:property value="username" />&TecID=<s:property value="tecinf.teacherId" />">下一周</a>
			   </td>
           </tr>
         </thead>
         <tbody>
         <tr style="height:40px;">
             <td style="width:3px;"></td>
             <td style="width:10px;"></td>
             <td style="width:80px;">星期一</td>
             <td style="width:80px;">星期二</td>
             <td style="width:80px;">星期三</td>
             <td style="width:80px;">星期四</td>
             <td style="width:80px;">星期五</td>
             <td style="width:80px;">星期六</td>
             <td style="width:80px;">星期日</td>
           </tr>
           <tr valign="middle"; style="height:90px;">
             <td style="vertical-align:middle!important;">上午</td>
             <td style="vertical-align:middle!important;">第1，2节</td>
             <td id="1" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date1" /></td>
             <td id="2" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date2" /></td>
             <td id="3" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date3" /></td>
             <td id="4" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date4" /></td>
             <td id="5" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date5" /></td>
             <td id="6" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date6" /></td>
             <td id="7" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date7" /></td>
           </tr>
           <tr valign="middle"; style="height:90px;">
             <td style="vertical-align:middle!important;">上午</td>
             <td style="vertical-align:middle!important;">第3，4节</td>
             <td id="8" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date8" /></td>
             <td id="9" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date9" /></td>
             <td id="10" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date10" /></td>
             <td id="11" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date11" /></td>
             <td id="12" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date12" /></td>
             <td id="13" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date13" /></td>
             <td id="14" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date14" /></td>
           </tr>
           <tr valign="middle"; style="height:90px;">
             <td style="vertical-align:middle!important;">下午</td>
             <td style="vertical-align:middle!important;">第5，6节</td>
             <td id="15" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date15" /></td>
             <td id="16" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date16" /></td>
             <td id="17" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date17" /></td>
             <td id="18" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date18" /></td>
             <td id="19" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date19" /></td>
             <td id="20" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date20" /></td>
             <td id="21" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date21" /></td>
           </tr>
           <tr valign="middle"; style="height:90px;">
             <td style="vertical-align:middle!important;">下午</td>
             <td style="vertical-align:middle!important;">第7，8节</td>
             <td id="22" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date22" /></td>
             <td id="23" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date23" /></td>
             <td id="24" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date24" /></td>
             <td id="25" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date25" /></td>
             <td id="26" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date26" /></td>
             <td id="27" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date27" /></td>
             <td id="28" ondblclick="updated(this)" style="vertical-align:middle!important; word-break: break-all;"><s:property value="dateList.date28" /></td>
           </tr>
         </tbody>
         <input type="hidden" name="toJsp" id=toJsp value="">
         <!--form action="hi.action" method="get" id="myform" name="myForm">
　　<input type="hidden" name="toJsp" id=toJsp value="">
</form-->
       </table>
		</div>
		
		
			<div class="tab-pane" id="panel-206240" style="border:1px solid #000;min-height:200px;height:auto;margin-top:20px;background-color:white;">
				<table class="table table-striped table-bordered" id="test">
				 <thead>
				   <tr>
					  <td colspan="9" style="height:40px; vertical-align:middle; text-align:center;">
					   预约教师信息查看表（学生版）：
					   </td>
				   </tr>
				 </thead>
				 <tbody>
				   <c:forEach var="item" items="${apptlist1}" varStatus="status">
						 <tr><td>${item}</td>
					 <td style="width:70px;"><a href="deleteappt.action?apptInf=${item}&<s:property value="username" />"><button type="button" id="a0">取消预约<tton></a></td>
					 </tr>
				  </c:forEach>
				   </tbody>
				 </table>
				   
				   
				   <table class="table table-striped table-bordered" id="test">
					 <thead>
					   <tr>
						  <td colspan="9" style="height:40px; vertical-align:middle; text-align:center;">
						   预约教师已被处理信息查看表（学生版）：
						   </td>
					   </tr>
					 </thead>
					 <tbody>
					   <c:forEach var="item" items="${apptlist2}" varStatus="status">
							 <tr><td>${item}</td>
						 </tr>
					  </c:forEach>
					 </tbody>
				   </table>

			</div>
				</div> 
			</div> 
		</div> 
	</div> 
</div>

<div style="width:100%;height:20px;position:relative;"></div>
<hr />
<div id="dht">
<p style="position:relative;top:0px;left:200px;">Copyright © 2009 all rights reserved. Power by 上海众臻信息科技有限公司
Please contact Us : market@sportoa.com
Tel : 021-54933212
</p>
<!--div style="height:10px;width:100; background-color:red;position:relative"></div-->
</div>
<div style="width:100%;height:10px;margin:0px;padding:0px;background-color:rgba(255,245,238,0.5);"></div>
</div>

</body>
<script type="text/javascript">
        var ur =location.href;
        var type=ur.split('?')[1].split("=")[1].split("&")[0];
        //document.getElementById(type.toString()).style.display="block";
        document.getElementById(type.toString()).click();
    </script>
</html>
