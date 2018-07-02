<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head lang="en">
    <meta charset="UTF-8">
    <title>留言板</title>
    <script type="text/javascript"></script>
    <style>
      #box {
        width: 800px;
        margin: 0 auto;
      }
      textarea {
        width: 800px;
      }
      #li {
        display: block;
        border-bottom: 1px dashed #ebebeb;
        margin: 10px 0;
        padding: 8px 0;
      }
    </style>
  </head>
  <style type="text/css">
a:link,a:visited{
 text-decoration:none;  
}
a:hover{
 text-decoration:underline;  
}
</style>
  <body background="cg.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment:fixed;">
    <div id="box">
      <h3>说点什么吧！ </h3>
      发布人：<input type="text"  id="person" value="${USER.username}">
      共<input style="border: 0;" name="" id="louceng">
      <textarea name="" id="text" rows="10" style=color:#F4A460></textarea>
      <input type="button" value="确认发布" id="btn" />
      <h3>全部留言</h3>
      <hr/>
    </div>
    <script>
      var num = 0;
      var num1 = 0;
      var box = document.getElementById("box");
      var text = document.getElementById("text");
      var btn = document.getElementById("btn");
      var person = document.getElementById("person");
      var ul = document.createElement("ul");
      ul.id = "ul1";
      var time = document.createElement("div");
      document.getElementById("louceng").value=num+"楼";
      btn.onclick = function() {
        //非空判断
        if(person.value==""||person.value==null){
          alert("发布人不允许为空！");
          return false;
        }
        if(text.value==""||text.value==null){
          alert("内容不允许为空！");
          return false;
        }
        //获取时间
        num = num+1;
        var datetime = getTime();
        time = document.createTextNode("发布时间：" + datetime);
        var li = document.createElement("li");
        li.id = "li";
        //创建删除功能
        var oA = document.createElement("a");
        var oAtext = document.createTextNode("删除");
        oA.href = "#";
        oA.appendChild(oAtext);
        //创建发布文本框
        var fabu = document.createElement("textarea");
        fabu.rows = "10";
        fabu.style = "margin: 0px; width: 760px; height: 138px;";
        fabu.value = text.value;
        fabu.disabled="disabled";
        //创建编辑功能
        var oB = document.createElement("a");
        var oBtext = document.createTextNode("修改留言");
        oB.href = "#";
        oB.appendChild(oBtext);
        //创建确认按钮
        var butt = document.createElement("input");
        butt.type = "button";
        butt.value = "确认";
        butt.style.display = "none";
        //解决兼容问题
        var ali = ul.getElementsByTagName("li");
        if(ali.length == 0) {
          ul.appendChild(li);
        } else {
          ul.insertBefore(li, ali[0]);
        }
        //添加节点
        box.appendChild(ul);
        var lou = document.createTextNode("第"+num+"楼");
        var persons = document.createTextNode("发布人："+ person.value);
        document.getElementById("person").value="";
        var textnode = document.createTextNode("发布内容：");
        document.getElementById("text").value="";
        li.appendChild(lou);
        li.appendChild(document.createElement("br"));
        li.appendChild(persons);
        li.appendChild(document.createElement("br"));
        li.appendChild(textnode);
        li.appendChild(document.createElement("br"));
        li.appendChild(fabu);
        li.appendChild(time);
        li.appendChild(oA);
        li.appendChild(oB);
        li.appendChild(butt);
        //删除
        oA.onclick = function() {
          ul.removeChild(this.parentNode);
          //删除时更新
          num1++;//删除次数
          document.getElementById("louceng").value=num-num1+"楼";
        };
        //编辑
        oB.onclick = function() {
          fabu.disabled = "";
          butt.style.display = "block";
        }
        //确认更改
        butt.onclick = function() {
          fabu.disabled="disabled";
          butt.style.display = "none";
        }
        //楼层展示
        document.getElementById("louceng").value=num-num1+"楼";
      }
      function getTime(){
    	  var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
    	  var date = new Date();
    	  var year = date.getFullYear();
    	  var month = date.getMonth()+1;
    	  var da = date.getDate();
    	  var hour = date.getHours()<10 ? "0"+date.getHours() : date.getHours() ;
    	  var minute = date.getMinutes()<10 ? "0"+date.getMinutes() : date.getMinutes() ;
    	  var second = date.getSeconds()<10 ? "0"+date.getSeconds() : date.getSeconds() ;
    	  var week = date.getDay();
    	  var time = year+"年"+month+"月"+da+"日 "+hour+":"+minute+":"+second +" "+weeks[week];
    	  return time;
    	}
    </script>
  </body>
</html>