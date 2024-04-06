<%@ page import="cn.shilight.blog.bean.SiteConfig" %>
<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <% SiteConfig siteConfig = HttpUtil.getSiteMessage();%>
    <title><%=siteConfig.getTittle()%>-后台管理</title>

    <!--css 引入-->
    <link href="../resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="../resource/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- 引入样式 -->
    <script src="../resource/js/view/article.js"></script>
</head>
<style>
    @import url("https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/element-ui/2.15.7/theme-chalk/index.css");

</style>

<body id="page-top " onload="on_open();on_open_control()">

<script>





</script>

<!-- 页面包装 -->
<div id="wrapper">
    <!-- 侧边栏 -->
    <jsp:include page="content/sideBar.jsp"/>
    <!-- 侧边栏结束 -->
    <!-- 内容部分 -->
    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
            <!-- 顶部栏 -->
            <jsp:include page="content/header.jsp"/>
            <!-- 顶部栏 结束 -->
            <!-- 主体内容开始 -->
            <c:choose>
                <c:when test="${param.view != null}">
                    <jsp:include page="content/mainContent/${param.view}.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="content/mainContent/overview.jsp"/>
                </c:otherwise>
            </c:choose>
            <!-- 主体内容结束 -->
        </div>
        <jsp:include page="content/footer.jsp"/>
    </div>
    <!-- End of Main Content -->
</div>
<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">确定注销?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">注销登录后，需要重新登录.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn sg-bg" href="../LogoutServlet">注销</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="../resource/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../resource/js/sb-admin-2.min.js"></script>


</body>

</html>
