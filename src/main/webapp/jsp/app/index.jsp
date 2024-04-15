<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c"
		  uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" import="java.util.*" %>
<%@ page language="java"
		 import="com.qilu.restaurant.app.po.Food" %>
<!DOCTYPE html>
<html lang="en" xmlns:bothmargin-top="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
	
    <link rel="stylesheet" type="text/css" href="../../css/app/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
	<script>
		function addShopCar(foodId){
			//加入商品到购物车，加入哪一个商品的foodId
			
			//到后端加入商品到购物车去
			
			window.location.href = "${pageContext.request.contextPath}/app/shopCar.do?method=add&foodId="+foodId;
			
		}
		
		function blurFn(obj,foodId,buyNum){
			var num = obj.value;
			//如果输入的数量<1或者不是一个数字,就赋值为原来的buyNum
			if(num<1||isNaN(num)){
				obj.value = buyNum;
			}else if(num!=buyNum){
			//反之，Math.ceil向上取整，修改购买数量
				window.location.href = "${pageContext.request.contextPath}/app/shopCar.do?method=update&foodId="+foodId+"&buyNum="+Math.ceil(num);
			}
		}
		
		function deleteFn(foodId){
			window.location.href = "${pageContext.request.contextPath}/app/shopCar.do?method=delete&foodId="+foodId;
		}
		
		function order(userId){
			window.location.href = "orderItem.jsp";
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
        	        <a href="orderItem.jsp">订单</a>
        	    </li>
        	         
        	<li class="bannerli">
        	    <a href="index.html">主页</a>
        	</li>
        </ul>


</div>

<div id="content" class="clearfix">
<!--    左-->
<div class="left">
<!--        登录-->
        <div id="leftLogin" class="login">
      
        	<div>
        		Hi~ o(*￣▽￣*)ブ admin welcome！
        	</div>
        
        </div>
<!--        购物车-->
    <div id="leftShopCar">
        <div class="login">
            <form method="post" >
                <ul class="carul">
                
                	
                	
                			<li>
								<!-- 动态生成-->
                        		<div>
                            		<a href="#" class="cara">把子肉</a>
                            		
                            		<!--  blurFn第二个参数商品id，第三个参数是购买数量,-->
                            		<input name=buyNum value="1" onblur="blurFn(this,${food.id},${food.buyNum})" style="width: 15px">
                            		<!--  deleteFn菜品id-->
                            		<input type="button"  value="×" onclick="deleteFn(${food.id});" style="border-radius: 3px;border: 1px solid #a3a3a3;"></input>
                        		</div>
                        		<div class="pricespan">
                            		<span>8.0￥</span>
                        		</div>
                    		</li><hr>
                		
                	
                    
                </ul>

                <div class="pricespan">
                    <span>总金额：8.0</span>
                    
                    	<input type="button" onclick="order()" value="下单">
                    
                </div>
                
            </form>
        </div>

    </div>
    </div>

<!--    右-->
    <div class="right">
<!--        右菜品-->
        <div class="rightheader">
            <h2>菜品：
            	<!-- 遍历所有未删除的菜系 -->
                		<a href="index.html">荤菜</a>
						<a href="index.html">凉菜</a>
            </h2>
        </div>
<!--        右菜展示-->
        <div >
<!--            1-->
            
            		<div class="img">
            			 <div class="imgkuang">
               			 	<img src="../../img/app/food/9c4a81bc-0ffb-40ea-8c0d-7cfc73f4cd83.jpg"  alt="picture" width="300" height="200">
               			 
               			 </div>
               			 <div class="imgma">
                 		 	<div>
                       		 	<span><b>把子肉</b></span>
                        	 	<span class="spfloat">8.0 ￥</span>
                    		</div>
                    		<div class="xiangqing">
                        		<span><a href="comment.jsp">详情</a></span>
                        		<form method="post" class="spfloat" action="#">
                        		<input type="hidden" id="dinnerTableId"  name="dinnerTableId" value="${dinnerTable.id }"> 
                            		<input type="button" onclick="addShopCar(${food.id})" value="加入购物车" class="btn">
                        		</form>
                    		</div>
                		 </div>
           			</div>
            	
<!--             2-->
					<div class="img">
						 <div class="imgkuang"> 
						 	<img src="../../img/app/food/辣子鸡.jpg"  alt="picture" width="300" height="200">
						 
						 </div>
						 <div class="imgma">
						 	<div>
					   		 	<span><b>辣子鸡</b></span>
					    	 	<span class="spfloat">16.0 ￥</span>
							</div>
							<div class="xiangqing">
					    		<span><a href="comment.jsp">详情</a></span>
					    		<form method="post" class="spfloat" action="#">
					    		<input type="hidden" id="dinnerTableId"  name="dinnerTableId" value="${dinnerTable.id }"> 
					        		<input type="button" onclick="addShopCar(${food.id})" value="加入购物车" class="btn">
					    		</form>
							</div>
						 </div>
					</div>

        </div>


    </div>
</div>

    

    <div class="page">
        <ul class="pagination">
        
			
            <li><a href="#}">«</a></li>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#">»</a></li>
    
        </ul>
    </div>

<!-- <div class="footer">
    <a href="#">管理中心</a>
</div> -->


</body>
</html>