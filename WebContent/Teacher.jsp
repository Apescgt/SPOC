<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>安徽工业大学教师管理</title>
<style type="text/css">
body{font-size:12px;
     background-color:#BCEE68;
     }
ul,li,h2{margin:0;padding:0;}
ul{list-style:none;}
#top{width:900px;height:40px;margin:0 auto;background-color:#CCCC00}
#top h2{width:150px;height:40px;background-color:#99CC00;float:left;font-size:14px;text-align:center;line-height:40px;}
#topTags{width:750px;height:40px;margin:0 auto;background-color:#CCCC00;float:left}
#topTags ul li{float:left;width:100px;height:25px;margin-right:5px;display:block;text-align:center;cursor:pointer;padding-top:15px;}
#main{width:900px;height:500px;margin:0 auto;background-color:#F5F7E6;}
#leftMenu{width:150px;height:500px;background-color:#009900;float:left}
#leftMenu ul{margin:10px;}
#leftMenu ul li{width:130px;height:30px;display:block;background:#99CC00;cursor:pointer;line-height:30px;text-align:center;margin-bottom:5px;}
#leftMenu ul li a{color:#000000;text-decoration:none;}
#content{width:750px;height:500px;float:left}
.content{width:740px;height:490px;display:none;padding:5px;overflow-y:auto;line-height:30px;}
#footer{width:900px;height:30px;margin:0 auto;background-color:#BFEFFF;line-height:30px;text-align:center;}
.content1 {width:740px;height:490px;display:block;padding:5px;overflow-y:auto;line-height:30px;}
a{text-decoration:none; 
color:purple;
float:right;
font-size:10pt; 
 }
</style>
<script type="text/javascript">
window.onload=function(){
function $(id){return document.getElementById(id)}
var menu=$("topTags").getElementsByTagName("ul")[0];//顶部菜单容器
var tags=menu.getElementsByTagName("li");//顶部菜单
var ck=$("leftMenu").getElementsByTagName("ul")[0].getElementsByTagName("li");//左侧菜单
var j;
//点击左侧菜单增加新标签
for(i=0;i<ck.length;i++){
ck[i].onclick=function(){
$("welcome").style.display="none"//欢迎内容隐藏
clearMenu();
this.style.background="yellow";
//循环取得当前索引
for(j=0;j<8;j++){
if(this==ck[j]){
if($("p"+j)==null){
openNew(j,this.innerHTML);//设置标签显示文字
 }
clearStyle();
$("p"+j).style.backgroundColor="yellow";
clearContent();
$("c"+j).style.display="block";
   }
 }
return false;
  }
 }
//增加或删除标签
function openNew(id,name){
var tagMenu=document.createElement("li");
tagMenu.id="p"+id;
tagMenu.innerHTML=name+"   "+"<img src='/img/off.gif' style='vertical-align:middle' onload="return imgzoom(this,600);" onclick="javascript:window.open(this.src);" style="cursor:pointer;"/>";
//标签点击事件
tagMenu.onclick=function(evt){
clearMenu();
ck[id].style.background="yellow";
clearStyle();
tagMenu.style.backgroundColor="yellow";
clearContent();
$("c"+id).style.display="block";
}
//标签内关闭图片点击事件
tagMenu.getElementsByTagName("img")[0].onclick=function(evt){
evt=(evt)?evt:((window.event)?window.event:null);
if(evt.stopPropagation){evt.stopPropagation()} //取消opera和Safari冒泡行为;
this.parentNode.parentNode.removeChild(tagMenu);//删除当前标签
var color=tagMenu.style.backgroundColor;
//设置如果关闭一个标签时，让最后一个标签得到焦点
if(color=="#ffff00"||color=="yellow"){//区别浏览器对颜色解释
if(tags.length-1>=0){
clearStyle();
tags[tags.length-1].style.backgroundColor="yellow";
clearContent();
var cc=tags[tags.length-1].id.split("p");
$("c"+cc[1]).style.display="block";
clearMenu();
ck[cc[1]].style.background="yellow";
 }
else{
clearContent();
clearMenu();
$("welcome").style.display="block"
}
menu.appendChild(tagMenu);
}
//清除菜单样式
function clearMenu(){
for(i=0;i<ck.length;i++){
ck[i].style.background="#99CC00";
 }
}
//清除标签样式
function clearStyle(){
for(i=0;i<tags.length;i++){
menu.getElementsByTagName("li")[i].style.backgroundColor="#FFCC00";
  }
}
//清除内容
function clearContent(){
for(i=0;i<7;i++){
$("c"+i).style.display="none";
 }
}
</script>
</head>
<body>
<a href="exit.jsp" target="_top">退出登录</a> 
<div id="cgt"><h2 style="color:purple">欢迎教师：${USER.username}</h2></div>
<div id="top">
<h2>教师管理</h2>
<div id="topTags">
<ul>
</ul>
</div>
</div>
<div id="main">
<div id="leftMenu">
<ul>
<li><a href="questionBankAction_list">试题管理</a></li>
<li><a href="#">课程管理</a></li>
<li><a href="#">课件管理</a></li>
<li><a href="#">用户管理</a></li>
<li><a href="#">课件订阅</a></li>
<li><a href="#">学生管理</a></li>
<li><a href="#">留言管理</a></li>
</ul>
</div>
<div id="content">
<div id="welcome" class="content" style="display:block;">
  <div align="center">
    <h2 style="color:#D2691E"><strong>安徽工业大学SPOC</strong></h2>
 </div>
</div>
</div>
</div>
<div id="footer"><em>安徽工业大学计算机科学与技术学院</em></div>
</body>
</html>