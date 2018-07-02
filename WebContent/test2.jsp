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
        <h3 style=color:#FF7F50>本章节习题</h3><hr/>  
        <form action="requestHandle.jsp" method="get">  
            <h4>一、单选题（每题20分，满分40分）</h4>  
                1.深度学习可以用在下列（     ）NLP任务中。<br>  
                <input type="radio" name="1" value="A">A、机器翻译<br>  
                <input type="radio" name="1" value="B">B、情感分析<br>  
                <input type="radio" name="1" value="C">C、问答系统<br>  
                <input type="radio" name="1" value="D">D、所有选项<br>  
                2.当构建一个神经网络进行图片的语义分割时，通常采用下面（       ）顺序。 <br>  
                <input type="radio" name="2" value="A">A、无可奉告<br>  
                <input type="radio" name="2" value="B">B、不能确定。<br>  
                <input type="radio" name="2" value="C">C、先用卷积神经网络处理输入，再用反卷积神经网络处理输出。<br>  
                <input type="radio" name="2" value="D">D、先用卷积神经网络处理输出，再用反卷积神经网络处理输入。<br>   
            <h4>二、多选题（每题30分，满分60分，错选、少选、多选不得分）</h4>  
                3.下列的哪种方法可以用来降低深度学习模型的过拟合问题？（            ）。 <br>  
                <input type="checkbox" name="3" value="A">A、增加更多的数据。<br>  
                <input type="checkbox" name="3" value="B">B、使用数据扩增技术。<br>  
                <input type="checkbox" name="3" value="C">C、使用归纳性更好的架构。<br>  
                <input type="checkbox" name="3" value="D">D、降低架构的复杂度。<br>  
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