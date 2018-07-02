<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>   
    <title>习题自测</title>
    <style type="text/css">
    #cgt{ postion:relative;left:1200px} 
    a{text-decoration:none}
    </style>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
  </head>  
  <body> 
  <div id="cgt">用户：${USER.username}</div>  
        <h3 style=color:#FF7F50>第二章习题</h3><hr/>  
        <form action="requestHandle.jsp" method="get">  
            <h4>一、单选题（每题20分，满分40分）</h4>  
                1.下列（   ）属于特征学习算法（representation learning algorithm）。<br>  
                <input type="radio" name="1" value="A">A、神经网络<br>  
                <input type="radio" name="1" value="B">B、均不属于<br>  
                <input type="radio" name="1" value="C">C、K近邻算法<br>  
                <input type="radio" name="1" value="D">D、随机森林<br>  
                2.假设你有5个大小为7x7、边界值为0的卷积核，同时卷积神经网络第一层的深度为1。此时如果你向这一层传入一个维度为224x224x3的数据，那么神经网络下一层所接收到的数据维度是（        ）。 <br>  
                <input type="radio" name="2" value="A">A、220x220x5<br>  
                <input type="radio" name="2" value="B">B、217x217x8。<br>  
                <input type="radio" name="2" value="C">C、217x217x3。<br>  
                <input type="radio" name="2" value="D">D、218x218x5。<br>   
            <h4>二、多选题（每题30分，满分60分，错选、少选、多选不得分）</h4>  
                3.下列哪些项所描述的相关技术是对的（            ）。 <br>  
                <input type="checkbox" name="3" value="A">A、AdaGrad使用的是一阶差分。<br>  
                <input type="checkbox" name="3" value="B">B、L-BFGS使用的是二阶差分。<br>  
                <input type="checkbox" name="3" value="C">C、AdaGrad使用的是二阶差分。<br>  
                <input type="checkbox" name="3" value="D">D、L-BFGS使用的是一阶差分。<br>  
                4.混沌度(Perplexity)是一种常见的应用在使用深度学习处理NLP问题过程中的评估技术，关于混沌度，（            ）说法是正确的。<br>  
                <input type="checkbox" name="4" value="A">A、混沌度没什么影响<br>  
                <input type="checkbox" name="4" value="B">B、混沌度对于结果的影响不一定<br>  
                <input type="checkbox" name="4" value="C">C、混沌度越高越好<br>  
                <input type="checkbox" name="4" value="D">D、混沌度越低越好<br>          
                <hr/>  
                <!-- <input type="submit" value="提交答案" style=color:#FF7F50--> 
                <a href="daanbidui.jsp" style=color:purple>提交答案</a>  
        </form>  
  </body>  
</html>  