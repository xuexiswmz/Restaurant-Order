<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单详情</title>
    <link rel="stylesheet" type="text/css" href="../../css/app/index.css">
    <script type="text/javascript">
    	function pay(orderId){
    		window.location.href = "index.jsp";
    	}
    	
    	function deleteOrder(orderId){
    		window.location.href = "index.jsp";
    	}
    
    </script>
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
           <a href="register.jsp">注册</a>
       </li>
       <li class="bannerli">
           <a href="login.jsp">登录</a>
       </li>
                
       
           <li class="bannerli">
               <a href="orderItem.html">订单</a>
           </li>
                
       <li class="bannerli">
           <a href="index.jsp">主页</a>
       </li>
        </ul>
</div>

<!--订单详情-->
<div class="orderItem">
    <h2>订单详情</h2>
    
    
    
    	
			<div>
			    <span>订单编号：QZZ-202101141455231 </span>
			    <SPAN>下单时间：2021-01-14 </SPAN>
			</div>
			<div>
			    <ul>
			    	
				    		<li>
					            <span>把子肉</span>
					            <span class="orderNum">1份</span>
					            <span class="orderPrice">￥8.0</span>
				        	</li>
			    		</c:forEach>
			    		
			    	</c:if>
			       
			    </ul>
			    <span class="orderPrice">总计：8.0</span><br>
			    <div class="orderBtn">
			    	
			    		<!-- 参数为订单id -->
				        <input type="button" value="付款"  onclick="pay()">
				        <input type="button" value="取消订单"  onclick="deleteOrder()">
			       
			    </div>
			</div>
			<br>
			<hr>
    	</c:forEach>
    
    </c:if>

</div>

</body>
</html>