<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="./resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<script>
    $(document).ready(function () {
        location.href = "<%=request.getContextPath()%>/goodsbasicinfo/listgoods";
    });
</script>
</body>
</html>
