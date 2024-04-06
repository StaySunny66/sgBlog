<%@ page import="cn.shilight.blog.basicutil.ArticleUtil" %>
<%@ page import="cn.shilight.blog.basicutil.PageUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 主体内容开始 -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">我的页面(分类)</h1>
    </div>
    <button class="sg-button-default btn mb-3" href="3" data-toggle="modal" data-target="#AddPage">
        添加页面
    </button>


    <!-- Content Row -->
    <div class="row">
        <div class="col-lg-8">
            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold sg-text-default">我的页面</h6>
                </div>
                <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                    <!-- Circle Buttons (Default) -->
                    <div class=" ">
                        <div class="table-responsive">
                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length" id="dataTable_length">
                                    </div>
                                </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div id="dataTable_filter" class="dataTables_filter">

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered dataTable no-footer" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                                <thead>
                                                <tr role="row">
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="页面名称: activate to sort column ascending" style="width: 69px;">页面名称</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="操作: activate to sort column ascending" style="width: 148px;">操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="item" items="<%=PageUtil.getAll()%>">
                                                    <tr>
                                                        <td class=\"sorting_1\">${item.name}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <a type="button" class="btn sg-button-default" href="../?page=${item.pageId}">查看页面</a>
                                                                <a type="button" class="btn btn-danger" href="../DeletePageServlet?pageId=${item.pageId}">删除</a>
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

                    <div class="container mt-3">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </div>

                </div>
            </div>


        </div>




    </div>



</div>


<!-- Logout Modal-->
<div class="modal fade" id="AddPage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">添加页面</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="card">
                <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                        <div style="width: 100%; display: block;">
                            <form action="../addPageServlet" method="post">
                                <div class="form-group">
                                    <label for="l1">页面名称</label>
                                    <input id="l1" type="text" class="form-control" name="PageName">
                                </div>
                                <div class="modal-footer">
                                    <button class="btn sg-button-default">添加</button>
                                    <button  class="btn btn-secondary" type="submit" data-dismiss="modal">取消</button>
                                </div>
                            </form>
                        </div>

                </div>
            </div>

        </div>
    </div>
</div>
