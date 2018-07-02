<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>安徽工业大学计算机学院试题管理</title>
<style type="text/css">
a{text-decoration:none;}
</style>
</head>
<body>
   <a href="shitiadd.jsp">添加题目</a>
    <table  border="1px" bordercolor="purple" cellpadding="0" cellspacing="0">
     <tr>
      <th>序号</th>
      <th width="40%">题目</th>
      <th width="8%">正确答案</th>
      <th>分数</th>
      <th>答案A</th>
      <th>答案B</th>
      <th>答案C</th>
      <th>答案D</th>
      <th width="3%" align="center">操作</th>
    </tr>
    <c:forEach  items="${getlist1}"  var="item" varStatus="vs">
    <tr>
      <input type="hidden" name="id" value="${item.id}" />
     <td width="4%" align="center">${vs.count}</td>
     <td>${item.question}</td>
     <td align="center">${item.correctAnswer}</td>
     <td width="4%" align="center">${item.score}</td>
     <td width="6%" align="center">${item.a}</td>
     <td width="6%" align="center">${item.b}</td>
     <td width="6%" align="center">${item.c}</td>
     <td width="6%" align="center">${item.d}</td>
     <td>
       <a href="questionBankAction_delete?id=${item.id}">删除 </a>
     </td>
    </tr>
    </c:forEach>
    </table> 
</body>
</html>