<%@ page import="cn.shilight.blog.basicutil.ArticleUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../../theme.jsp"/>
<!-- 主体内容开始 -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">我的文章</h1>
    </div>
    <a class=" btn mb-3 sg-button-default"   href="?view=newArticle">
        新的文章
    </a>


    <!-- Content Row -->
    <div class="row">
        <div class="col-lg-12">
            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold  sg-text-default" >文章</h6>
                </div>
                <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                    <!-- Circle Buttons (Default) -->
                    <div class="p-2 ">
                        <div class="">
                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="row"><div class="col-sm-12 col-md-6">
                                    <div class="dataTables_length" id="dataTable_length">
                                    </div>
                                </div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable no-footer" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                <thead>
                                <tr role="row">
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="标题: activate to sort column ascending" style="width: 69px;">标题</th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="内容: activate to sort column ascending" style="width: 59px;">内容</th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="作者: activate to sort column ascending" style="width: 59px;">作者</th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="创建日期: activate to sort column ascending" style="width: 134px;">创建日期</th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="操作: activate to sort column ascending" style="width: 148px;">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="<%=ArticleUtil.getAll()%>">
                                    <tr>
                                        <td class=\"sorting_1\">${item.name}</td><td>
                                        <c:choose>
                                            <c:when test="${item.content.length()<=20}">
                                                ${item.content}...
                                            </c:when>
                                            <c:otherwise>
                                                ${item.content.substring(0,20)}...
                                            </c:otherwise>
                                        </c:choose>

                                    </td><td>高旭阳</td><td>${item.date}</td>
                                        <td>
                                            <div class="btn-group">
                                                <a type="button" class="btn sg-button-default " href="../?article=${item.id}">查看</a>
                                                <a type="button" class="btn btn-danger" href="../DeleteArticleServlet?articleId=${item.id}">删除</a>
                                                <a type="button" class="btn sg-button-default" href="?view=editArticleView&articleId=${item.id}">修改</a>
                                            </div>

                                        </td>

                                    </tr>
                                </c:forEach>







                                </tbody>
                            </table>
                            </div>
                            </div>
                            </div>
                        </div>



                    </div>

                </div>
            </div>


        </div>




    </div>



</div>
