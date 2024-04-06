<%@ page import="cn.shilight.blog.bean.Page" %>
<%@ page import="cn.shilight.blog.basicutil.PageUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<div class="row ml-3" >



    <div class="col-lg-2">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold sg-text-default">文章细节</h6>
            </div>
            <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                <div class="p-1 ">
                    <div style="width: 100%; display: block;">
                        <div class="form-group">
                            <label >标题</label>
                            <input id="name" type="text" class="form-control" name="id">
                            <label >作者名称</label>
                            <input id="username" type="text" class="form-control" name="name">
                            <label >分类</label>
                            <select id="classid" style="width: 100%" class="form-select form-control" id="sel1" name="classId">
                                <c:forEach var="item" items="<%=PageUtil.getAll()%>" >
                                    <option value="${item.pageId}">${item.name}</option>
                                </c:forEach>


                            </select>
                        </div>
                        <div>
                            <button id="renow" onclick="post()" class=" mt-2 btn sg-button-default">
                                                <span class="icon text-white-50" id="renow">
                                                    <i class="fas fa-check" id="renow"></i>
                                                </span>
                                <span class="text" id="renow">更新</span>
                            </button>
                            <div id="wait_new" style="display: none" class="  spinner-border sg-text-default"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-7">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold sg-text-default">内容</h6>
            </div>
            <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                <div class="p-1 ">
                    <div style="width: 100%; display: block;">
                        <textarea id="text-content" type="text" style="width: 100%;height: 400px"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>

