<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <title>新增商品基本信息</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form class="form-horizontal" role="form" action="TradeServlet" method='post' onsubmit="return check()">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox"/>Remember me</label>
                        </div>
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


<div class="panel-body">
    <form class="form-horizontal" action="TradeServlet" method='post' onsubmit="return check()">
        <div class="form-group">
            <label for="tradename" class="col-sm-3 control-label">商品名:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="商品名" name="tradename" id="tradename"/>
            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label for="features" class="col-sm-3 control-label">商品特性:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="商品特性" name="features" id="features"/>

            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label for="price" class="col-sm-3 control-label">商品价格:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="商品价格" name="price" id="price"/>

            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label for="color" class="col-sm-3 control-label">商品颜色:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="商品颜色" name="color" id="color"/>

            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label for="networktype" class="col-sm-3 control-label">网络制式:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="网络制式" name="networktype" id="networktype"/>

            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label for="memory" class="col-sm-3 control-label">内存大小:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" placeholder="内存大小" name="memory" id="memory"/>
            </div>
            <label class="col-sm-2 control-label"></label>
        </div>

        <div class="form-group">
            <label class="col-sm-1 control-label"></label>
            <div class="col-sm-8">
                <input type="hidden" name="action" value="addPhone"/>
                <button type="submit" class="btn btn-success btn-add col-sm-offset-3">提交添加</button>
            </div>

        </div>

    </form>
</div>
</body>
</html>
