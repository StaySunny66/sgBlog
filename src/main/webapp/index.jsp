<%@ page import="cn.shilight.blog.bean.SiteConfig" %>
<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%SiteConfig siteConfig= HttpUtil.getSiteMessage(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%=siteConfig.getTittle()%> - <%=siteConfig.getTittle2()%></title>
    <link href="bs/css/bootstrap.min.css" rel="stylesheet">
    <script src="bs/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-image:url(resource/images/bg.jpg)">
<%HttpUtil.siteCountAdd(); %>

<div style="align-items: center">
    <div style="width: 70%;margin-top: 60px;margin-left: 15%;background-color: rgba(255,255,255,0.9);border-radius: 15px ;display: flex;padding: 20px">
        <!- 侧边栏导入-!>
        <jsp:include page="content/leftBar.jsp"/>
        <div style="width: 74%;" >
            <!- 菜单导入-!>
            <jsp:include page="content/menu.jsp"/>
            <!- 主体内容导入-!>
            <jsp:include page="content/main.jsp"/>
            <div style="text-align: center">
                <p class="sg-text-default">@矢光小屋 2022-2023</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>