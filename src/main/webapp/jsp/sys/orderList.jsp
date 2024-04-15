<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台订单列表</title>
    <link rel="stylesheet" type="text/css" href="../../css/sys/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
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

<div id="contentsys">
   <ul class="sysul">
        <li class="sysli">
            <a href="index.jsp" class="active">主页</a>
        </li>
        <li class="sysli">
            <a  href="foodTypeList.jsp">菜系管理</a>
        </li>
        <li class="sysli">
            <a  href="foodList.jsp">菜品管理</a>
        </li>
        <li class="sysli">
            <a href="orderList.html">订单管理</a>
        </li>
        <li class="sysli">
            <a href="saleList.jsp" >销量统计</a>
        </li>
    </ul>


    <div class="sysright">

        <!--        筛选菜品-->
        <div>
            <form>
                <input type="text" placeholder="请输入订单编号">
                <input type="submit" value="搜索">

            </form>
        </div><br>
        <!--        菜品列表显示-->
        <div>
            <table class="table1">
                <thead>
                <tr align="center" valign="middle" id="TableTitle">
                    <td>订单编号</td>
                    <td>用户名</td>
                    <td>价格</td>
                    <td>下单时间</td>
                    <!-- <td>付款时间</td> -->
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                </thead>
                <!--显示数据列表 -->
                <tbody id="TableData">
                
               
	                	<tr class="TableDetail1">
	                    <td>QZZ-202101141455231&nbsp;</td>
	                    <td>admin&nbsp;</td>
	
	                    <td>8.0&nbsp;</td>
	                    <td>2021-01-14</td>
	                   
	                    
		                    <td>
		                        	未付款/
		                        	已付款
		                    </td>
	                    <td>
	                        	<a href="#" class="FunctionButton">激活</a>
	                        <a href="#" class="FunctionButton">删除</a>
	                    </td>
	                </tr>
                	
                
                </tbody>
            </table>
        </div>


    </div>

</div>
</body>
</html>