<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加新菜系</title>
    <link rel="stylesheet" type="text/css" href="../../css/sys/index.css">
    <script src="../../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	function addSubmit(){
		var foodTypeName = $("#foodTypeName").val();
		if(foodTypeName != null && foodTypeName != ""){
			//没有重复返回true  保存菜系名称
			jQuery.ajax({
				   type: "POST",
				   url: "#",
				   data: "foodTypeName="+foodTypeName, 
				   dataType:"text",
				   async:false,
				   success: function(msg){
					   if(msg != null && msg == "success"){
						   $("#message").html("保存成功！");
		                	  $("#foodTypeName").val("");
	                  }else if(msg != null && msg == "fail"){
	                	  $("#message").html("菜系名称已存在，请重新取名！");
	                	  $("#foodTypeName").val("");
	                  }
				   },error:function(){
					   alert("数据加载异常");
				   }
			})
		}else{
	   	 	$("#message").html("请输入菜系名称！");
		} 
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
        <a href="saleList.jsp" >销量统计</a>
    </li>
    </ul>


    <div class="sysright">
        <!-- from标签必须设置  enctype="multipart/form-data" 默认post -->
        <form id="form" action="#" method="post" enctype="multipart/form-data">
            <!--        <input type="hidden" name="method" value="addSubmit">-->
            <!--        <img src="../img/demo1.jpg" alt="picture" width="300" height="200">-->
            <!-- 本段标题（分段标题） -->
            <div >
                <a href="foodTypeList.jsp">
                <img src="../../img/app/back.jpg" style="width: 30px;height: 30px">
                </a>

            </div>
            <!-- 本段表单字段 -->
            <div class="foodadd">
                <h2>添加新菜系</h2>
                <table cellpadding="0" cellspacing="0" class="mainForm">

                    <tr>
                        <td>菜系名</td>
                        <td>
                        	<input type="text"  id="foodTypeName" name="foodTypeName" class="InputStyle" /> *
                        	<label color="red" id="message"></label>
                        </td>
                    </tr>

                </table>
                <br>
                <div class="foodaddbtn">
                    <input type="button" onclick="addSubmit()" value="添加" class="FunctionButtonInput" >
                </div>
            </div>


            <!-- 表单操作 -->
            <!--        <div id="InputDetailBar">-->
            <!--            <input type="button" onclick="addSubmitTest()" value="添加" class="FunctionButtonInput">-->
            <!--            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>-->
            <!--        </div>-->
        </form>

    </div>
</div>
</body>
</html>