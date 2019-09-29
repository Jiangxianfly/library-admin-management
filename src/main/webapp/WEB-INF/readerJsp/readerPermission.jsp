<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<style type="text/css">
    .row {
        margin-top: 50px;
        margin-left: 50px;
    }

    span {
        font-family: 'microsoft YaHei';
        font-size: 18px;
    }
</style>
<body>
<div class="row">
    <!-- 用户信息展示：头像，用户名，等等-->
    <div class="col-lg-4">
        <div class="articles card">
            <div class="card-close">
                <div class="dropdown">
                    <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                              class="dropdown-item remove">
                        <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i
                            class="fa fa-gear"></i>Edit</a></div>
                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h2 class="h3">用户基本信息 </h2>
                <div class="badge badge-rounded bg-green">${sysUserList.size()}条</div>
            </div>
            <c:forEach items="${sysUserList}" var="sysUser">
                <div class="card-body no-padding">
                    <div class="item d-flex align-items-center">
                        <div class="image"><img src="<%=basePath %>${sysUser.photo}" alt="..."
                                                class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">${sysUser.name}</h3></a>
                            <small>Posted on ${sysUser.date}</small>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
    <div class="col">
    <!-- 设置用户权限-->
    <div class="row-lg">
        <div class="card">
            <div class="card-close">
                <div class="dropdown">
                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"
                            class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                        <a href="#" class="dropdown-item remove"><i class="fa fa-times"></i>Close</a><a href="#"
                                                                                                        class="dropdown-item edit"><i
                            class="fa fa-gear"></i>Edit</a>
                    </div>
                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">设置用户权限</h3>
            </div>
            <div class="card-body">
                <form class="form-inline" method="post" action="<%=basePath%>/Userlogin/insertPermission">
                    <div class="form-group">
                        <input name="userName" type="text" placeholder="用户名" class="mr-3 form-control">
                    </div>
                    <div class='form-group'>
                        <select class="mr-3 form-control" name="roleName">
                            <option value="SysManager">系统管理员</option>
                            <option value="BookManager">图书管理员</option>
                            <option value="Manager">前台管理员</option>
                            <option value="User"> 普通用户</option>
                        </select>
                    </div>
                    &nbsp;
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
        <br/>
    <!-- 系统管理员，书籍管理员，前台管理员-->
    <div class="statistics row-lg ">
        <div class="statistic d-flex align-items-center bg-white has-shadow">
            <div class="icon bg-red"><i class="fa fa-tasks"></i></div>
            <div class="text"><strong>${sysManagerNum}</strong><br>
                <small>系统管理员</small>
            </div>
        </div>
        <div class="statistic d-flex align-items-center bg-white has-shadow">
            <div class="icon bg-green"><i class="fa fa-calendar-o"></i></div>
            <div class="text"><strong>${bookManagerNum}</strong><br>
                <small>书籍管理员</small>
            </div>
        </div>
        <div class="statistic d-flex align-items-center bg-white has-shadow">
            <div class="icon bg-orange"><i class="fa fa-paper-plane-o"></i></div>
            <div class="text"><strong>${managerNum}</strong><br>
                <small>前台管理员</small>
            </div>
        </div>
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