<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS 字体样式-->
    <link rel="stylesheet" href="/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font 图标字体样式-->
    <link rel="stylesheet" href="/css/fontastic.css">
    <!-- Google fonts - Poppins 谷歌字体 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet 主题样式表-->
    <link rel="stylesheet" href="/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/css/custom.css">
    <!-- Favicon 网站快捷方式图标-->
    <link rel="shortcut icon" href="/img/favicon.ico">
    <!-- Tweaks for older IEs 针对旧版本IE的调整--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!--[if IE]>

<![endif]-->
<style type="text/css">
    .form-group {
        margin-left: 20px;
    }
</style>
<script type="text/javascript">
    function setValue() {
        var username = document.getElementById("name").value;
        location.href = "<%=basePath%>/reader/findStatusByrdID?rdID=" + username;
        window.reload();


    }
</script>
<body>
<!-- 证件操作-->
<div style="margin-top: 20px" class="col-lg-4">
    <div class="card">
        <div class="card-close">
            <div class="dropdown">
                <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                        class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                          class="dropdown-item remove">
                    <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i
                        class="fa fa-gear"></i>Edit</a></div>
            </div>
        </div>
        <div class="card-header d-flex align-items-center">
            <h3 class="h4">证件操作</h3>
        </div>
        <div class="card-body">
            <p>在此操作用户的证件是否有效</p>
            <form class="form-horizontal col-lg-12" method="post" action="<%=basePath %>/reader/updateStatus">
                <div class="form-group">
                    <label class="form-control-label">用户名</label>
                    <input class="form-control form-control-success" type="text" name="rdID" placeholder="用户名" id="name" name="rdID"
                           value="${rdID }" onfocusout="setValue()">
                </div>
                <div class="form-group">
                    <label class="form-control-label">证件当前状态</label>
                    <input type="text" class="form-control form-control-warning" disabled value="${status }" id="status">
                </div>
                <div class="form-group">
                    <span>证件状态:</span>
                    <select class="form-control" name="rdStatus">
                        <option value="有效">有效</option>
                        <option value="挂失">挂失</option>
                        <option value="注销">注销</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="提交" class="btn btn-danger">
                </div>
            </form>
        </div>
    </div>
</div>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/popper.js/umd/popper.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="/vendor/chart.js/Chart.min.js"></script>
<script src="/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="/js/front.js"></script>
</body>

</html>