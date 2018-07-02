<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>   
    <title>课堂考试系统</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page"> 
    <style type="text/css">
#cgt{
      position: relative;left: 1200px;
    }</style> 
  </head>  
  <body>  
   <script type="text/javascript" language="javascript">  
function shijian(){
     var myDate = new Date();
     var mytime=myDate.toLocaleTimeString();     //获取当前时间
     document.getElementById("av").innerHTML=mytime;
}
setInterval('shijian()',1000);
</script>
<div id="cgt">用户：${USER.username}</div>
        <h3 style=color:#FF7F50>在线考试</h3><hr/>  
          当前时间：
          <div id="av"></div>
         
        <form action="questionBankAction_score" method="post">  
            <h4>一、单选题（每题10分，满分100分）</h4> 
              <c:forEach items="${newList}" var="item" varStatus="vs">
             
                ${vs.count}.${item.question}。<br>  
                <input type="hidden" name="ids" value="${item.id}"><br>
                <input type="radio" name="choose${item.id}" value="A">A、${item.a}<br>  
                <input type="radio" name="choose${item.id}" value="B">B、${item.b}<br>  
                <input type="radio" name="choose${item.id}" value="C">C、${item.c}<br>  
                <input type="radio" name="choose${item.id}" value="D">D、${item.d}<br>  
               </c:forEach>
                <input type="submit" value="提交答案" style=color:#FF7F50>  
        </form>      
  </body>  
</html>  