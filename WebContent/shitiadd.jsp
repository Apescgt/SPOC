<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>试题添加</title>
<style type="text/css">
body{
     background-color:#9fdf83;
     }

</style>
</head>
<body> 
<div style="width:100%;text-align:center">
   <form action="questionBankAction_add">
   <h2 style=color:#FFFAF0><em>请在下列空白处填入相关信息</em></h2>
       题目:<input name="question" type="text"  width="200px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
       正确答案:<input name="correctAnswer" type="text" width="200px"  style="color:red; background-color: #f6b26b"/> <br/><br/>
       分数:<input name="score" type="text" width="200px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
       类型:<input name="type" type="text" width="20px"  style="color:red; background-color: #f6b26b"/> <br/><br/>
       答案A:<input name="a" type="text" width="20px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
       答案B:<input name="b" type="text" width="20px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
       答案C:<input name="c" type="text" width="20px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
       答案D:<input name="d" type="text" width="20px"  style="color:blue; background-color: #f6b26b"/> <br/><br/>
   <input type="submit"  value="添加提交" style="background-color:#f6b26b">
   </form>
   </div>
</body>
</html>