<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录</title>
    <link rel="stylesheet" type="text/css" href="../../css/sys/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    function submitTable() {
        var name = document.getElementById("name").value;
        var password = document.getElementById("password").value;

        if(name == null || name == ""){
            $("#message").val("请输入用户名");
            document.getElementById("name").focus();
            return false;//阻止默认行为
        }
        if(password == null || password == ""){
            $("#message").val("请输入密码");
            document.getElementById("password").focus();
            return false;
        }
        document.getElementById("loginform").submit();
    }	
    
    </script>
</head>
<body>
<div id="banner">
    <div class="resname">
        <span >东北菜馆</span>
    </div>
    <ul class="bannerul">
        <span style="float: right">欢迎！admin</span>
    </ul>
</div>

<div class="register">
    <h2 style="text-align: center">后台登录</h2>
    <div class="registerForm" >
        <form method="get" action="index.jsp" id="loginform">
            <input type="hidden"  name="method" value="submitTable">
            <input type="text" name="name" id="name" placeholder="用户名"><br>

            <input type="password" name="password"  id="password" placeholder="密码"><br>

            <input type="submit" name="login" value="登录"  id="login" onclick="submitTable()">
        </form>
    </div>

</div>
</body>
</html>