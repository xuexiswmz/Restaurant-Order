<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
     <link rel="stylesheet" type="text/css" href="../../css/app/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
</head>
<body>
<div id="banner">
    <div class="resname">
        <span >东北菜馆</span>
    </div>
   <ul class="bannerul">
        
        	<li class="bannerli">
        	    <a href="login.jsp">退出</a>
        	</li>
        	       
        	<li class="bannerli">
        	    <a href="register.html">注册</a>
        	</li>
        	<li class="bannerli">
        	    <a href="login.jsp">登录</a>
        	</li>
        	         
        	
        	    <li class="bannerli">
        	        <a href="orderItem.jsp">订单</a>
        	    </li>
        	         
        	<li class="bannerli">
        	    <a href="index.jsp">主页</a>
        	</li>
        </ul>
</div>
<div class="register">
    <h2 style="text-align: center">注册</h2>
    <div class="registerForm" >
    <form method="get" action="#" id="registerform">
        <input type="text" id="name" name="name" placeholder="用户名"><br>
        <input type="text" id="phone" name="phone" placeholder="手机号"><br>
        <input type="password" id="password" name="password" placeholder="密码"><br>
        <input type="password" id="okpassword" name="okpassword" placeholder="确认密码"><br>
        <input type="submit" name="comfirm" value="注册"  onclick="return submitTable()">
    </form>
    ${msg }
    </div>

</div>
<script type="text/javascript">
	function submitTable(){
		var password = $("#password").val();
		var okpassword = $("#okpassword").val();
		if(!(password == okpassword)){
			alert("两次密码不匹配");
			return false;
		}else{
		document.getElementById("registerform").submit();
		}
	}
</script>

</body>
</html>