<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>销量统计</title>
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
            <a href="orderList.jsp">订单管理</a>
        </li>
        <li class="sysli">
            <a href="saleList.html" >销量统计</a>
        </li>
    </ul>

    <div class="sysright">

        <!--        筛选菜品-->
        <div>
            <form>
				<a href="#"><input type="button"  value="按月来统计" ></a>
                <a href="#"><input type="button"  value="按周来统计" ></a>
				<a href="#"><input type="button"  value="按日来统计" ></a>	
            </form>
        </div><br>
        <!--        菜品列表显示-->
        <div>
            <table class="table1">
                <thead>
                <tr align="center" valign="middle" id="TableTitle">
                    <td>菜品名</td>
                    <td>销量</td>
                    <td>时间</td>
                </tr>
                </thead>
                <!--显示数据列表 -->
                <tbody id="TableData">
                
				          <tr class="TableDetail1">
				
				           		<td>把子肉&nbsp;</td>
				
				            	<td>1&nbsp;</td>
				
				            	<td>2021-01-14</td>

				      	</tr>
                
                </tbody>
            </table>
        </div>


    </div>

</div>
</body>
</html>