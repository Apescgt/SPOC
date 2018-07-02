<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>测验结果</title> 
    <style type="text/css">
    #cgt{
         postion: relative;left: 1200px
        }
    </style>  
     <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
  </head>  
  <body>  
  <div id="cgt">用户：${USER.username}</div>
  <h3 style=color:blue>测验结束，本次测验得分为:</h3> <span style=color:red;font-size:35>60</span>
<%--      <%  
        int count=4;   //总题目个数  
        int ac_num1=0;  //单选题正确的题目个数  
        int ac_num2=0;  //多选题正确的题目个数  
        int err_num=0; //错误的总个数  
        int[] a=new int[8];  
        String str1=request.getParameter("1");  
        String str2=request.getParameter("2");   
        String[] str3=request.getParameterValues("3");  
        String[] str4=request.getParameterValues("4");  
        //将多选题的结果转换成字符串  
        String typeStr3="";  
        for(int i=0;i<str3.length;i++)  
            typeStr3+=str3[i];  
        String typeStr4="";  
        for(int i=0;i<str4.length;i++)  
            typeStr4+=str4[i];    
        if(str1==null)  
            str1="";  
        if(str2==null)  
            str2="";  
       
        if(typeStr3==null)  
            typeStr3="";  
        if(typeStr4==null)  
            typeStr4="";  
              
        if(str1.equals("B")) {  
            ac_num1++;  
            a[1]++;  
        }  
        if(str2.equals("D")) {  
            ac_num1++;  
            a[2]++;  
        }   
          
        if(typeStr3.equals("ABC")) {  
            ac_num2++;  
            a[3]++;  
        }  
        if(typeStr4.equals("ACD")) {  
            ac_num2++;  
            a[4]++;  
        }  
     %>  
       
    <h3>考试结束！本次考试统计数据如下:</h3>  
             你的答题结果为：  
        <%  
            for(int i=1;i<a.length;i++)  
            {  
                if(a[i]==1)  
                    out.print(i+":正确；");  
                else  
                    out.print(i+":错误；");  
            }  
         %>  
         <hr>  
        总题目个数：<%=count %>  <br>  
        答对单选题题目个数：<%=(ac_num1)%> ；得分：<%=ac_num1*20 %><br>  
        答对多选题题目个数：<%=(ac_num2)%> ；得分：<%=ac_num2*30 %><br>  
        答错题目个数：<%=(4-ac_num1-ac_num2) %> <br>  
         <hr>   
        本次考试总成绩为：<%=(ac_num1*20+ac_num2*30)%>分 --%>
  </body>  
</html>  