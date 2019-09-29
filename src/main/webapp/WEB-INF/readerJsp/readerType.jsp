<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
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
    .form-group {
        margin-left: 20px;
    }
    h3 {
        font-family: 'microsoft YaHei';
        font-size: 25px;
    }
    .table {
        margin-left: 20px;
    }
</style>
<body>
<%--信息注册，信息修改--%>
<div class="row">
    <!-- 信息注册-->
    <div class="col-lg-6">
        <div class="card">
            <div class="card-close">
                <div class="dropdown">
                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                              class="dropdown-item remove">
                        <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i
                            class="fa fa-gear"></i>Edit</a></div>
                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">信息注册</h3>
            </div>
            <div class="card-body">
                <p>在此注册读者信息</p>
                <form method="post" action="readerType/insertReaderType">
                    <div class="form-group">
                        <label class="form-control-label">类别：</label>
                        <input type="text" class="form-control" placeholder="读者类别如0，1。。。" name="rdType">
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">名称：</label>
                        <input type="text" class="form-control" placeholder="读者类型名称" name="rdTypeName">
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可借书的数量：</label>
                        <input type="text" class="form-control" placeholder="借书的数量" name="canLendQty"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可借书的天数：</label>
                        <input type="text" class="form-control" placeholder="借书的天数" name="canLendDay"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可续借的次数：</label>
                        <input type="text" class="form-control" placeholder="续借的次数" name="canContinueTimes"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">罚款率：</label>
                        <input type="text" class="form-control" placeholder="罚款率" name="punishRate"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">证书有效期：</label>
                        <input type="text" class="form-control" placeholder="有效期" name="dateValid"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="提交" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 信息修改-->
    <div class="col-lg-6">
        <div class="card">
            <div class="card-close">
                <div class="dropdown">
                    <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">信息修改</h3>
            </div>
            <div class="card-body">
                <p>在此修改读者信息</p>
                <form method="post" action="readerType/updateReaderType?start=${start }">
                    <div class="form-group">
                        <label class="form-control-label">类别：</label>
                        <input type="text" class="form-control" placeholder="读者类别如0，1。。。" name="rdType" readonly="readonly"
                               value="${readerType.rdType }">
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">名称：</label>
                        <input type="text" class="form-control" placeholder="读者类型名称" name="rdTypeName"
                               value="${readerType.rdTypeName  }"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可借书的数量：</label>
                        <input type="text" class="form-control" placeholder="借书的数量" name="canLendQty"
                               value="${readerType.canLendQty }"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可借书的天数：</label>
                        <input type="text" class="form-control" placeholder="借书的天数" name="canLendDay"
                               value="${readerType.canLendDay }"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">可续借的次数：</label>
                        <input type="text" class="form-control" placeholder="续借的次数" name="canContinueTimes"
                               value="${readerType.canContinueTimes }"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">罚款率：</label>
                        <input type="text" class="form-control" placeholder="罚款率" name="punishRate"
                               value="${readerType.punishRate }"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">证书有效期：</label>
                        <input type="text" class="form-control" placeholder="有效期" name="dateValid"
                               value="${readerType.dateValid }"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="修改" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%--信息展示--%>
<div class="row">
    <div class="form-group">
        <h3>信息展示</h3>
    </div>
    <table class="table table-bordered table-hover ">
        <thead class="bg-gray">
        <td>类型</td>
        <td>名称</td>
        <td>可借书的数量</td>
        <td>可借书的天数</td>
        <td>可续借的次数</td>
        <td>罚款率</td>
        <td>证件有效期</td>
        <td>操作</td>

        </thead>
        <tbody>
        <c:forEach items="${TypeList}" var="readerType">
            <tr>
                <td>${readerType.rdType }</td>
                <td>${readerType.rdTypeName }</td>
                <td>${readerType.canLendQty }本</td>
                <td>${readerType.canLendDay }天</td>
                <td>${readerType.canContinueTimes }次</td>
                <td>${readerType.punishRate }</td>
                <td>${readerType.dateValid }天</td>
                <td>
                    <a href="<%=basePath%>/readerType/editReaderType?rdType=${readerType.rdType }&start=${start}"><span
                            class="glyphicon glyphicon-edit"></span></a>
                    <a href="javascript:void(0)"
                       onclick="if(confirm('你确定删除?')){location.href='<%=basePath %>/readerType/deleteReaderType?start=${start }&rdType=${readerType.rdType}'; window.reload();}"><span
                            class="glyphicon glyphicon-remove"></span></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="row">
    <nav aria-label="...">
        <ul class="pager">
            <li>
                <a href="<%=basePath%>/readerType/searchReaderType?start=${start-10}&rdType=${rdType}">上一页</a>
            </li>
            <li>
                <a href="<%=basePath%>/readerType/searchReaderType?start=${start+10}&rdType=${rdType}">下一页</a>
            </li>
        </ul>
    </nav>
</div>
<a href="<%=basePath%>/readerType/exportExcel?start=${start}&rdType=${rdType}"><span class="glyphicon glyphicon-save">导出Excel表</span></a>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/popper.js/umd/popper.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="/vendor/chart.js/Chart.min.js"></script>
<script src="/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="/js/front.js"></script>
</body>
</html>
