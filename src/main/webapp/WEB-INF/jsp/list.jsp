<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品基本信息管理</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="tab-pane fade in active" id="userList">
        <form action="/goodsBasicInfo/listGoods" method="get">
            <table class="table table-hover table-bordered table-condensed">
                <tr>
                    <td>序号</td>
                    <td>商品名称</td>
                    <td>上架日期</td>
                    <td>所属分类</td>
                    <td>单价</td>
                    <td>商品总收入</td>
                    <td>剩余商品</td>
                    <td>操作</td>
                </tr>
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
            </table>
        </form>
    </div>
</div>
</body>
</html>
