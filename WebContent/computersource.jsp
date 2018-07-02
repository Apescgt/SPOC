<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8 ">
<title>计算机课程</title>
</head>
<body background="cgt.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment:fixed;">
<div id="cgt">用户：${USER.username}</div>
<div>
<h3 style=color:#FFDEAD>课程：<br><br></h3>
<a href="Tflowsource.jsp" target="_blank"style=color:#ff9797>TensorFlow</a>
</div>
</body>
</html>