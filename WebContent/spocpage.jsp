<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>  
<html>  
    <head>  
        <meta charset="utf-8">  
        <meta http-equiv="X-UA-Compatible" content="IE=edge">  
        <title>spoc在线课堂学习</title>  
        <link rel="stylesheet" href="http://static9.pplive.cn/pub/flagment/v_20150114110035/header.min.css" />  
        <!--页面初始化CSS和页面公用头部的css-->  
        <style type="text/css">  
            @charset "utf-8";  
            html,  
            body {  
                background-color: #FFDAB9;  
            } 
            #cgt{
             position: relative;left: 1100px;
            }
            
            .vg-body {  
                width: 1390px;  
                margin: 0 auto;  
            }                             
            .vg_title {  
                font-size: 24px;  
                line-height: 24px;  
                padding: 20px 0;  
                color: #464646;  
            }                
            .vg_task {  
                background-color: #fff;  
                position: relative;  
            }  
              
            .vg_task .arrowbtn-left,  
            .vg_task .arrowbtn-right {  
                position: absolute;  
                top: 70px;  
                width: 16px;  
                height: 20px;  
                cursor: pointer;  
            }  
              
            .vg_task .arrowbtn-left {  
                left: 40px;  
                border: 1px solid red;  
                background: url(q.jpg) no-repeat;  
                ;  
            }  
              
            .vg_task .arrowbtn-right {  
                right: 40px;border: 1px solid red;  
                background: url(w.jpg) no-repeat;  
                ;  
            }  
              
            .vg_tasklist {  
                width: 1200px;  
                overflow: hidden;  
                margin: 0 auto;  
            }  
              
            .vg_tasklist ul {  
                width: 999%;  
            }  
              
            .vg_tasklist li {  
                width: 258px;  
                height: 130px;  
                float: left;  
                border: 1px solid #c8c8c8;  
                margin: 15px 53px 15px 0;  
                position: relative;  
            }  
              
            .vg_tasklist li .task_hover {  
                position: absolute;  
                left: -1px;  
                top: -1px;  
                width: 212px;  
                padding: 20px 25px 20px 23px;  
                height: 90px;  
                border-bottom: 2px solid #e65a5a;  
                overflow: hidden;  
                background-color: #f0f0f0;  
                display: none;  
            }  
              
            .vg_tasklist li:hover .task_hover {  
                display: block;  
            }  
              
            .task_hover .task_desc {  
                font-size: 16px;  
                line-height: 20px;  
                color: #646464;  
            }  
              
            .task_hover .task_limittimes {  
                font-size: 14px;  
                color: #787878;  
                float: left;  
                padding-top: 12px;  
            }  
              
            .vg_tasklist li img {  
                float: left;  
                margin: 22px 8px 20px 20px;  
            }  
              
            .vg_tasklist li .rightinfo {  
                width: 136px;  
                float: left;  
                text-align: center;  
            }  
              
            .rightinfo h3 {  
                font-size: 16px;  
                color: #646464;  
                padding-top: 15px;  
            }  
              
            .rightinfo p {  
                font-size: 14px;  
                line-height: 26px;  
                color: #787878;  
            }  
              
            .rightinfo a,  
            .task_hover a {  
                display: block;  
                text-align: center;  
                width: 96px;  
                height: 30px;  
                line-height: 30px;  
                border: 2px solid #e65a5a;  
                border-radius: 5px;  
                font-size: 16px;  
                font-weight: 700;  
                color: #e65a5a;  
            }  
              
            .task_hover a.done,  
            .task_hover a.done:hover {  
                background-color: #b4b4b4;  
                color: #fff;  
                border-color: #b4b4b4;  
                cursor: default;  
            }  
              
            .rightinfo a {  
                margin: 12px auto 0;  
            }  
              
            .task_hover a {  
                float: right;  
                margin-top: 18px;  
                margin-right: -4px;  
            }  
              
            .task_hover a:hover {  
                text-decoration: none;  
                background-color: #e65a5a;  
                color: #fff;  
            }  
            /*grid-1230*/  
              
            .grid-1230 .vg-body {  
                width: 1210px;  
            }  
              
            .grid-1230 .vg_tasklist {  
                width: 1090px;  
            }  
              
            .grid-1230 .vg_tasklist li {  
                margin-right: 16px;  
            }  
              
            .grid-1230 .vg_task .arrowbtn-left {  
                left: 33px;  
            }  
              
            .grid-1230 .vg_task .arrowbtn-right {  
                right: 33px;  
            }  
              
            .grid-1230 .vg_growth_table {  
                padding: 24px 30px;  
            }  
              
            .grid-1010 .vg-body {  
                width: 990px;  
            }  
              
            .grid-1010 .vg_tasklist {  
                width: 850px;  
            }  
              
            .grid-1010 .vg_tasklist li {  
                margin-right: 35px;  
            }  
              
            .grid-1010 .vg_task .arrowbtn-left {  
                left: 30px;  
            }  
              
            .grid-1010 .vg_task .arrowbtn-right {  
                right: 30px;  
            }  
              
            .grid-1010 .vg_growth_table {  
                padding: 24px;  
            }  
        </style>          
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
        <script>  
            window.onresize = function() {  
                var winWidth = document.body.clientWidth;  
                if(winWidth <= 1230) {  
                    body.className = "grid-1010";  
                } else if(winWidth <= 1410) {  
                    body.className = "grid-1230";  
                } else if(winWidth > 1410) {  
                    body.className = "grid-1410";  
                } else {  
                    alert("do not know!");  
                }  
            } ; 
        </script>  
    </head>   
    <body id="body">  
        <script>  
            //初始化状态显示样式判断,放在body后面  
            var winWidth = document.body.clientWidth;  
            if(winWidth <= 1230) {  
                body.className = "grid-1010";  
            } else if(winWidth <= 1410) {  
                body.className = "grid-1230";  
            } else if(winWidth > 1410) {  
                body.className = "grid-1410";  
            } else {  
                alert("do not know!");  
            }  
        </script>  
        <div class="vg-body">         
            <div class="vg_title">
                <div id="cgt">用户：${USER.username}</div>
                <h1 style=color:#6495ED;font-size:35px;text-align:center>中国大学SPOC课堂</h1><br><br><br><br><br><br><br><br>
            <h2 style=color:#DAA520;text-align:center>MOOC+CLASSROOM=SPOC</h2>
            </div>             
            <div class="vg_task">  
                <div class="arrowbtn-left"></div>  
                <div class="arrowbtn-right"></div>  
                <div class="vg_tasklist">  
                    <ul class="cf" id="switchPic">                
                        <li>                          
                            <div class="rightinfo">  
                                <h3 style=color:#6495ED>英语天地</h3>  
                                <p style=color:#F08080>覆盖考研<span>高频</span>考点</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                            <div class="task_hover">  
                                <p class="task_desc"style=color:#FF7F50>SPOC课堂（英语）</p>  
                                <p class="task_limittimes">已学习章节：<span>0</span>章节</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                        </li>  
                        <li>  
                            
                            <div class="rightinfo">  
                                <h3 style=color:#6495ED>考研政治</h3>  
                                <p style=color:#F08080>0基础逆袭<span>名师</span>授课</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                            <div class="task_hover">  
                                <p class="task_desc"style=color:#FF7F50>SPOC课堂（政治）</p>  
                                <p class="task_limittimes">已学习章节：<span>0</span>章节</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                        </li>  
                        <li>  
                              
                            <div class="rightinfo">  
                                <h3 style=color:#6495ED>高等数学</h3>  
                                <p style=color:#F08080>复杂高数<span>轻松</span>掌握</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                            <div class="task_hover">  
                                <p class="task_desc"style=color:#FF7F50>SPOC课堂（高数）</p>  
                                <p class="task_limittimes">已学习章节：<span>0</span>章节</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                        </li> 
                         <li>                                
                            <div class="rightinfo">  
                                <h3 style=color:#6495ED>计算机</h3>  
                                <p style=color:#F08080>从入门<span>到</span>精通</p>  
                                <a href="javascript:;">去学习></a>  
                            </div>  
                            <div class="task_hover">  
                                <p class="task_desc"style=color:#FF7F50>SPOC课堂（计算机）</p>  
                                <p class="task_limittimes">已学习章节：<span>0</span>章节</p>  
                                <a href="computersource.jsp" target= _blank>去学习></a>  
                            </div>  
                        </li>
                        </ul>                                      
                </div>  
            </div>  
            <script>  
        //task growth  
        var switchPic = (function() {  
  
            /*  
now:当前第几个li  
linum:总共几个li  
shownum:要展示几个li  
w_li:li的宽度  
marginR_li:li的右边距  
*/  
            var now = 1;  
            var linum, shownum, offset, w_li, marginR_li, pre, next, wrap;  
  
            function init(o) {  
                pre = o.preBtn;  
                next = o.nextBtn;  
                wrap = o.wrap;  
                bindBtn();  
            }  
  
            function btnShow() {  
                getInfo();  
                if(linum <= shownum) { //如果li总个数小于要展示的个数，pre和next都不显示  
                    pre.hide();  
                    next.hide();  
                } else if(now == 1) { //初始化，只显示next  
                    pre.hide();  
                    next.show();  
                } else if(now == linum - shownum + 1) { //到最后一组，只显示pre  
                    pre.show();  
                    next.hide();  
                } else { //中间pre,next都显示。  
                    pre.show();  
                    next.show();  
                }  
            }  
  
            function getInfo() {  
                linum = $("#switchPic").find("li").size();  
                if($("#body").hasClass("grid-1010")) {  
                    shownum = 3;  
                    w_li = wrap.find("li").outerWidth(); //算上了border的宽度  
                    marginR_li = parseInt(wrap.find("li").css("marginRight"));  
                    offset = w_li + marginR_li;  
                } else if($("#body").hasClass("grid-1230")) {  
                    shownum = 4;  
                    w_li = wrap.find("li").outerWidth(); //算上了border的宽度  
                    marginR_li = parseInt(wrap.find("li").css("marginRight"));  
                    offset = w_li + marginR_li;  
                } else if($("#body").hasClass("grid-1410")) {  
                    shownum = 4;  
                    w_li = wrap.find("li").outerWidth(); //算上了border的宽度  
                    marginR_li = parseInt(wrap.find("li").css("marginRight"));  
                    offset = w_li + marginR_li;  
                }  
            }  
  
            function bindBtn() {  
                btnShow();  
                next.on("click", function() {  
                    now++;  
                    btnShow();  
                    wrap.stop(true).animate({  
                        "margin-left": -(now - 1) * offset  
                    });  
                });  
                pre.on("click", function() {  
                    now--;  
                    btnShow();  
                    wrap.stop(true).animate({  
                        "margin-left": -(now - 1) * offset  
                    });  
                });  
  
                $(window).resize(function() {  
                    now = 1;  
                    btnShow();  
                    wrap.animate({  
                        "margin-left": 0  
                    });  
                });  
            }  
            return {  
                init: init  
            }  
        })();  
  
        switchPic.init({  
            preBtn: $(".arrowbtn-left"),  
            nextBtn: $(".arrowbtn-right"),  
            wrap: $("#switchPic")  
        });  
    </script>          
    </body>  
</html> 