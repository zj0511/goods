<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html>
<html>
<head>
    <title>新增商品基本信息</title>
    <link href="<%=basePath%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=basePath%>/resources/js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>/resources/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=basePath%>/resources/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <link href="<%=basePath%>/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav">
                <li><a href="<%=basePath%>/goodsBasicInfo/listGoodsBasicInfo">首页</a></li>
                <li><a href="<%=basePath%>/goodsBasicInfo/addGoodBasicInfo">添加商品信息</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form class="form-horizontal" role="form" action="<%=basePath%>/goodsBasicInfo/certainToAddGoodBasicInfo" method='post'>
                <div class="form-group">
                    <label for="goodsName" class="col-sm-2 control-label">商品名称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="请输入商品名称"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-2 control-label">上架日期</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="date" name="date" placeholder="请选择上架日期" readonly="readonly" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="belongType" class="col-sm-2 control-label">所属分类</label>
                    <div class="col-sm-10">
                        <select id="belongType" class="form-control">
                            <option value="">请选择</option>
                            <option value="1">家用电器</option>
                            <option value="2">电脑办公</option>
                            <option value="3">家居家纺</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="goodsPrice" class="col-sm-2 control-label">单价</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="goodsPrice" name="goodsPrice" placeholder="请输入单价"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="goodsCount" class="col-sm-2 control-label">商品总量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="goodsCount" name="goodsCount" placeholder="请输入商品总量"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="note" class="col-sm-2 control-label">其他说明</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="note" name="note" placeholder="其他说明"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交添加</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(function () {
        $('#date').datetimepicker({
            format: "yyyy-mm-dd", // 选择日期后，文本框显示的日期格式
            language: 'zh-CN', // 汉化
            weekStart: 1,
            todayBtn: 1,//显示‘今日’按钮
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,  //Number, String. 默认值：0, 'hour'，日期时间选择器所能够提供的最精确的时间选择视图。
            clearBtn:true,//清除按钮
            forceParse: 0
        });
    });
</script>
</body>
</html>
