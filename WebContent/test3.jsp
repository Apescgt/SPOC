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
        <h3 style=color:#FF7F50>第三章习题</h3><hr/>  
        <form action="requestHandle.jsp" method="get">  
            <h4>一、单选题（每题20分，满分40分）</h4>  
                1.当在内存网络中获得某个内存空间时，通常选择读取矢量形式数据而不是标量，这里需要(  )类型的寻址来完成.<br>  
                <input type="radio" name="1" value="A">A、都不行<br>  
                <input type="radio" name="1" value="B">B、基于内容的寻址<br>  
                <input type="radio" name="1" value="C">C、都可以<br>  
                <input type="radio" name="1" value="D">D、基于位置的选址<br>  
                2.一般我们建议将卷积生成对抗网络（convolutional generative adversarial nets）中生成部分的池化层替换成（        ）。 <br>  
                <input type="radio" name="2" value="A">A、跨距卷积层<br>  
                <input type="radio" name="2" value="B">B、局部跨距卷积层。<br>  
                <input type="radio" name="2" value="C">C、仿射层。<br>  
                <input type="radio" name="2" value="D">D、ReLU层。<br>   
            <h4>二、多选题（每题30分，满分60分，错选、少选、多选不得分）</h4>  
                3.人类智能的特征包括（            ）。 <br>  
                <input type="checkbox" name="3" value="A">A、感知能力。<br>  
                <input type="checkbox" name="3" value="B">B、学习能力。<br>  
                <input type="checkbox" name="3" value="C">C、记忆与思维能力。<br>  
                <input type="checkbox" name="3" value="D">D、行为能力。<br>  
                4.人工智能研究的基本内容包括（             ）。<br>  
                <input type="checkbox" name="4" value="A">A、机器行为<br>  
                <input type="checkbox" name="4" value="B">B、机器感知<br>  
                <input type="checkbox" name="4" value="C">C、机器思维<br>  
                <input type="checkbox" name="4" value="D">D、机器学习<br>          
                <hr/>  
                <!-- <input type="submit" value="提交答案" style=color:#FF7F50--> 
                <a href="daanbidui.jsp" style=color:purple>提交答案</a>  
        </form>  
  </body>  
</html>  