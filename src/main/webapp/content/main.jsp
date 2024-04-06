<%@ page import="cn.shilight.blog.basicutil.ArticleUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.shilight.blog.bean.Article" %>
<%@ page import="java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %><%--

  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/16
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="../theme.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="padding: 30px">



  <c:choose>
    
    <c:when test="${param.page != null}">
      <% String id = request.getParameter("page");
         List<Article> art = ArticleUtil.getByClass(id);
      %>

      <c:forEach var="item" items="<%=art%>">
        <div style="padding: 15px;background-color: white;border-radius: 5px; margin-top: 5px">
          <h5> ${item.name}</h5>
          <c:choose>
            <c:when test="${item.content.length()<=20}">
              <p>${item.content}...</p>
            </c:when>
            <c:otherwise>
              <p>${item.content.substring(0,20)}...</p>
            </c:otherwise>
          </c:choose>
          <div style="color: rgba(0,0,0,0.49 );margin-left: 10px;display: flex" >
            <div>${item.date} ${item.user}</div>
            <div style="margin-left: 100px"> <a class="sg-read-more" href="?article=${item.id}">阅读更多</a></div>
          </div>
        </div>
      </c:forEach>
    </c:when>
    <c:when test="${param.article != null }">
      <div style="width: 100%;text-align: center">
        <%Article article = ArticleUtil.getArticle(request.getParameter("article")); %>
        <h2 style="margin: 20px"><%=article.getName()%></h2>
        <%=article.getContent()%>

      </div>
    </c:when>
    <c:otherwise>
      <c:forEach var="item" items="<%=ArticleUtil.getAll()%>">
        <div style="padding: 15px;background-color: white;border-radius: 5px; margin-top: 5px">
          <h5> ${item.name}</h5>

          <c:choose>
            <c:when test="${item.content.length()<=20}">
              <p>${item.content}...</p>
            </c:when>
            <c:otherwise>
              <p>${item.content.substring(0,20)}...</p>
            </c:otherwise>
          </c:choose>


          <div style="color: rgba(0,0,0,0.49 );margin-left: 10px;display: flex" >
            <div>${item.date}  ${item.user}</div>
            <div style="margin-left: 100px" ><a class="sg-read-more" href="?article=${item.id}">阅读更多</a></div>
          </div>
        </div>
      </c:forEach>
    </c:otherwise>
  </c:choose>










</div>
