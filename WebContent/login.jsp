<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>安徽工业大学</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<style type=text/css>
.cgt{
      text-align:center;
      }
</style>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					    <div class="logo_box">
						    <h2 style=color:#FFDAB9;text-align:center>安徽工业大学计算机学院</h2><br><br>
					     <form action="${pageContext.request.contextPath}/loginAction" name="f" method="post">
					<div class="input_outer">
				<span class="u_user"></span>
			<input name="username" autocomplete="off" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名">
				</div>
					<div class="input_outer">
						<span class="us_uer"></span>
							<input name="passwd" id="uname" id="upass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							      </div>
							          <div>
					            <font style="color: red">${error}</font>
						    </div>
						 <div class="form-group">
                      <div class="col-sm-offset-3 col-sm-7"> 
                   <div class=cgt>
               <input type="radio" id="jiaoshi" name="leixing" value="2"/><label for="jiaoshi">教师用户</label>
                   <input type="radio" id="xuesheng" name="leixing" value="1" /><label for="xuesheng">学生用户</label>
                      </div>
                         </div>				        
		                    </div>		
						      <div class="mb2"><a class="act-but submit" href="#" style="color: #FFFFFF">登录</a></div>  
				                 </div>
					         <div class="mb2"><input type="submit" class="act-but submit" style="color: #FFFFFF" value="登录 "></div>													 					
			              </div>
		               </div>
	               </div>
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		<div style="text-align:center;"></div>
	</body>
</html>