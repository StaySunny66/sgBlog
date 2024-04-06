<%@ page import="cn.shilight.blog.basicutil.PageUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/16
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="../theme.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="padding-left: 50px" >
    <ul class="nav">

        <c:forEach var="item" items="<%=PageUtil.getAll()%>">
            <li class="nav-item">
                <a class="
                <%--选中的标签加入选中样式--%>
                <c:choose>
                    <c:when test="${param.page !=null&& param.page == item.pageId}"> sg-active  </c:when>
                    <c:otherwise> sg-none-active </c:otherwise>
                </c:choose>
                nav-link"  href="?page=${item.pageId}">${item.name}</a>
            </li>
        </c:forEach>
    </ul>
</div>
