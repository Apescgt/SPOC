<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>TensorFlow课程</title>
</head>
<style type="text/css">
#cgt{
      position: relative;left: 1200px;
    }
a:link,a:visited{
 text-decoration:none;  
}
a:hover{
 text-decoration:underline;  
}
</style>
<body  background="cgt.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment:fixed;">
<div id="cgt">用户：${USER.username}</div>
<h3 style=color:#F4A460>深度学习与模式识别</h3><br><br>
<div style=float:left>
<ul  style=color:#483D8B>
<li class="u-greentab j-tabitem f-f0 "
data-name="课程介绍及公告" data-type="1" data-id="1003097021">
<a href="pingfenbiaozhun.jsp">课程介绍及公告</a>
</li><br><br><br>
<li class="u-greentab j-tabitem f-f0 "
data-name="课程章节及习题" data-type="2" data-id="1003097022">
<a href="zuoti.jsp">课程章节及习题</a>
</li><br><br><br>
<li class="u-greentab j-tabitem f-f0 "
data-name="在线考试" data-type="3" data-id="1003097023">
<a href="questionBankAction_choose">在线考试</a>
</li><br/><br/><br/>
<li class="u-greentab j-tabitem f-f0 last"
data-name="留言讨论区" data-type="4" data-id="1003097024">
<a href="demo.jsp">留言板</a>
</li>
</ul>
</div>
<div style=text-align:center>
<video width="840" height="480"  src="hhh.mp4" type="video/mp4"  controls preload="auto" >
</video>
</div>
</body>
</html>
