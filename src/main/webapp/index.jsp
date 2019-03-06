<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
<script>
    $(document).ready(function () {
        location.href = "<%=request.getContextPath()%>/goodsBasicInfo/listGoodsBasicInfo";
    });
</script>
</body>
</html>
