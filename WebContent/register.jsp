<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<head>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h2 style=text-align:center>安徽工业大学计算机学院</h2><br><br>
						<form action="${ctx}/register
						Action" name="f" method="post" id="inputForm">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="username"  id="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="passwd" id="passwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" type="password" placeholder="请输入密码">
								
							</div>
							
							<!--  <div class="input_outer">
								<span class="us_uer"></span>
								<input name="passwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请确认密码">
							 </div> -->
							 
							
							 <center><input type="submit"  id="register"  value="注册" class="act-but submit" style="color: #FFFFFF;width: 220px;" ></center>
							
							 <!-- <a class="act-but submit" style="color: #FFFFFF">提交</a> -->
						   </form>
						</div>
						<!-- 	<div class="mb2"><input type="hidden" class="act-but submit" style="color: #FFFFFF" value="提交"></div>  -->
					</div>
			</div>
		</div>
		<!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		<div style="text-align:center;"></div>
	<script type="text/javascript" src="${ctx}/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/jquery.validate/1.11.1/jquery.validate.min.js"></script>	
   <script  type="text/javascript">
      $(function () {
    	  $("#inputForm").validate({
    			rules: {
    				username:{
    					required: true,
    				},
    				passwd:{
    					required: true,
    				}
    			},
    			messages: {
    				username:{
    					required: "请输入用户名"
    				},
    				passwd:{
    					required: "请输入密码",
    				}
    			}
    		});
    	  
    	  $("#register").click(function() {
    		  if(($('#username').val()!=="" &&$('#passwd').val()!=="")){
    	    		confirm('注册成功');
    	    	}
  	    }); 
 	});
    	  
     </script>  
	</body>
</html>