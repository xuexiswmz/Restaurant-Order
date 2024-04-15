<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台菜品列表</title>
    <link rel="stylesheet" type="text/css" href="../../css/sys/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
	  //文档加载完后
		window.onload=function(){
			
			//获取后台保存的disabled值
			var foodTypeId = "${foodTypeId}";
			//遍历菜系是否删除状态的select标签中所有的option标签
			var disabledSelect = document.getElementById("foodTypeId")
			//获取下拉框中所有的option
			var options = disabledSelect.options;
			
			$.each(options,function(i,option){
				$(option).attr("selected",option.value == foodTypeId);
			});
			
		}
	    
    	function foodTypeChange(obj){
    		//获取用户输入的关键字
    		var keyword = $("#keyword").val();
    		//获取被选择的
    		var foodTypeId = obj.value;
    		
    		//发送请求
    		window.location="${pageContext.request.contextPath}/sys/foodList.do?method=list&keyword="+keyword+"&foodTypeId="+foodTypeId;
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

<div id="contentsys">
   <ul class="sysul">
        <li class="sysli">
            <a href="index.jsp" class="active">主页</a>
        </li>
        <li class="sysli">
            <a  href="foodTypeList.jsp">菜系管理</a>
        </li>
        <li class="sysli">
            <a  href="foodList.html">菜品管理</a>
        </li>
        <li class="sysli">
            <a href="orderList.jsp">订单管理</a>
        </li>
        <li class="sysli">
            <a href="saleList.jsp" >销量统计</a>
        </li>
    </ul>

    <div class="sysright">

<!--        筛选菜品-->
        <div>
            <form action="#" method="get">
            <input type="hidden" name="method" value="list">
                <input id="keyword" name="keyword" type="text" placeholder="请输入菜品名称" value="">
                <select name="foodTypeId" id="foodTypeId" onchange="foodTypeChange(this)">
                    <option value="">全部</option>
                  <option value="${foodType.id}">荤菜</option>
                    	<option value="${foodType.id}">凉菜</option>
                    
                   
                    
                </select>
                <input type="submit" value="搜索">
                <a href="foodAdd.jsp"><input type="button" value="添加" ></a>
            </form>
        </div><br>
<!--        菜品列表显示-->
        <div>
            <table class="table1">
                <thead>
                <tr align="center" valign="middle" id="TableTitle">
                    <td>编号</td>
                    <td>菜名</td>
                    <td>所属菜系</td>
                    <td>价格</td>
                    <td>创建时间</td>
                    <td>修改时间</td>
                    <td>是否删除</td>
                    <td>操作</td>
                </tr>
                </thead>
                <!--显示数据列表 -->
                <tbody id="TableData">
                
                
	                	<tr class="TableDetail1">
	                
		                	<td>1&nbsp;</td>
		                    <td>把子肉&nbsp;</td>
		                    <td>荤菜&nbsp;</td>
		                    <td>8.0&nbsp;</td>
		                    <td>2021-01-14  </td>
		                    <td>2021-01-14</td>
		                    <td>
		                   
		                    		已删/
		                   
		                  
		                    		未删
		                     
		                    </td>
		                    <td>
		                        <a href="foodUpdate.jsp" class="FunctionButton">更新</a>
		                        	<a href="#" class="FunctionButton">上架</a>
		                        	<a href="#" class="FunctionButton">下架</a>
		                    </td>
	 
	                </tr>
                	
                		没有你要找的数据！
               
                	

                </tbody>
            </table>
        </div>


    </div>

</div>
</body>
</html>