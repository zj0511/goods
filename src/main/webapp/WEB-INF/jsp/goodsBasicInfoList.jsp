<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <title>商品基本信息管理</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav">
                <li><a href="<%=basePath%>/goodsBasicInfo/addGoodBasicInfo">添加商品信息</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="<%=basePath%>/goodsBasicInfo/listGoods" method="get">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>商品名称</th>
                        <th>上架日期</th>
                        <th>所属分类</th>
                        <th>单价</th>
                        <th>商品总收入</th>
                        <th>剩余商品</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.goodsBasicInfoList}" var="goodsBasicInfo">
                        <tr>

                            <td>${goodsBasicInfo.id}</td>
                            <td>${goodsBasicInfo.goodsName}</td>
                            <td>${goodsBasicInfo.date}</td>
                            <td>${goodsBasicInfo.belongType}</td>
                            <td>${goodsBasicInfo.goodsPrice}</td>
                            <td>${goodsBasicInfo.totalPrice}</td>
                            <td>${goodsBasicInfo.restGoods}</td>
                            <td>
                                <button class="btn btn-primary" type="button"> 编辑</button>
                                <button class="btn btn-primary" type="button"> 删除</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>


</body>
</html>
