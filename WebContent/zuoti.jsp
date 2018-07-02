<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="UTF-8" lang="utf-8">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
 <title>课程章节和习题</title>
 <style type="text/css">
 #cgt{
      position: relative;left: 1200px;
    }
 /* body {margin:0;text-align:center;color:#000;font:normal 12px Arial,Verdana,Tahoma;text-align:center;background:#C8D0D5;line-height:150%;} */
 a:link,a:visited {color:#385065;text-decoration:none}
 a:hover {text-decoration:underline}
 #menu {width:150px;margin:0px 15px;padding:0px;text-align:left;list-style:none}
 #menu .item {margin:5px 0px;padding:0px;list-style:none}
 a.title:link, a.title:visited, a.title:hover {display:block;color:#385065;font-weight:bold;padding:2px 0 0 22px;width:128px;line-height:23px;cursor:pointer;text-decoration:none}
 #menu .item ul {border:1px solid #9FACB7;margin:0;width:118px;padding:3px 0px 3px 30px;background:#fff;list-style:none;display:none}
 #menu .item ul li {display:block;}
 </style>
 <script language="javascript" type="text/javascript">
 // --- 获取ClassName
 document.getElementsByClassName = function(cl) {
  var retnode = [];
  var myclass = new RegExp('\\b'+cl+'\\b');
  var elem = this.getElementsByTagName('*');
  for (var j = 0; j < elem.length; j++) {
   var classes = elem[j].className;
   if (myclass.test(classes)) retnode.push(elem[j]);
  }
  return retnode;
 }
 function HideAll() {
  var items = document.getElementsByClassName("optiton");
  for (var j=0; j<items.length; j++) {
   items[j].style.display = "none";
  }
 }
 // --- 设置cookie
 function setCookie(sName,sValue,expireHours) {
  var cookieString = sName + "=" + escape(sValue);
  //;判断是否设置过期时间
  if (expireHours>0) {
    var date = new Date();
    date.setTime(date.getTime + expireHours * 3600 * 1000);
    cookieString = cookieString + "; expire=" + date.toGMTString();
  }
  document.cookie = cookieString;
 }
 //--- 获取cookie
 function getCookie(sName) {
   var aCookie = document.cookie.split("; ");
   for (var j=0; j < aCookie.length; j++){
  var aCrumb = aCookie[j].split("=");
  if (escape(sName) == aCrumb[0])
    return unescape(aCrumb[1]);
   }
   return null;
 }
 window.onload = function() {
  var show_item = "opt_1";
  if (getCookie("show_item") != null) {
    show_item= "opt_" + getCookie("show_item");
  }
  document.getElementById(show_item).style.display = "block";
  var items = document.getElementsByClassName("title");
  for (var j=0; j<items.length; j++) {
   items[j].onclick = function() {
    var o = document.getElementById("opt_" + this.name);
    if (o.style.display != "block") {
     HideAll();
     o.style.display = "block";
     setCookie("show_item",this.name);
    }
    else {
     o.style.display = "none";
    }
   }
  }
 }
 </script>
</head>
<body background="cgt.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment:fixed;">
<div id="cgt">用户：${USER.username}</div>
<h2 style=color:#ADD8E6>课件与习题自测</h2>
<hr>
<ul id="menu">
<li class="item"><a href="javascript:void(0)" class="title" name="1" style=color:#AFEEEE>第一章：深度学习TensorFlow</a><br/>
   <ul id="opt_1" class="optiton">
    <li><a href="kejian.jsp?cat=1" style=color:#FF7F50>课件查看</a></li>
    <li><a href="ceiyanyuzuoye.jsp?cat=2" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li>
 <li class="item"><a href="javascript:void(0)" class="title" name="2" style=color:#AFEEEE>第二章：机器学习基础</a><br/>
   <ul id="opt_2" class="optiton">
    <li><a href="kejian.jsp?cat=3" style=color:#FF7F50>课件查看</a></li>
    <li><a href="test1.jsp" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li>
 <li class="item"><a href="javascript:void(0)" class="title" name="3" style=color:#AFEEEE>第三章：目标识别与分类</a><br/>
   <ul id="opt_3" class="optiton">
    <li><a href="kejian.jsp?cat=5" style=color:#FF7F50>课件查看</a></li>
    <li><a href="test2.jsp" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li>
 <li class="item"><a href="javascript:void(0)" class="title" name="4" style=color:#AFEEEE>第四章:循环神经网络与自然语言处理</a><br/>
   <ul id="opt_4" class="optiton">
    <li><a href="kejian.jsp?cat=7" style=color:#FF7F50>课件查看</a></li>
    <li><a href="test3.jsp" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li>
 <li class="item"><a href="javascript:void(0)" class="title" name="5" style=color:#AFEEEE>第五章：产品环境中模型的部署</a><br/>
   <ul id="opt_5" class="optiton">
    <li><a href="kejian.jsp?cat=9" style=color:#FF7F50>课件查看</a></li>
    <li><a href="test4.jsp" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li><li class="item"><a href="javascript:void(0)" class="title" name="6" style=color:#AFEEEE>第六章：辅助函数丶代码结构和类</a><br/>
   <ul id="opt_6" class="optiton">
    <li><a href="kejian.jsp?cat=11" style=color:#FF7F50>课件查看</a></li>
    <li><a href="ceiyanyuzuoye.jsp?cat=12" style=color:#FF7F50>作业测验</a></li>
   </ul>
 </li>
</ul>
</body>
</html>