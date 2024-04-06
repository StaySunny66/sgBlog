<%@ page import="cn.shilight.blog.basicutil.LoginUtil" %>
<%@ page import="cn.shilight.blog.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../../theme.jsp"/>

<div class="card shadow mb-4 " style="width: 50% ;margin-left: 50px">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold sg-text-default">密码修改</h6>
  </div>
  <div class="card-body " style="padding-top: 30px;padding-left: 10px">
    <div class="p-1 ">
      <p>修改您的密码</p>
      <div style="width: 100%; display: block;">
        <form action="../changePassServlet" method="post">
          <% User user = LoginUtil.getUser(request);%>
          <div class="form-group">
            <label>当前用户</label>
            <input value="<%=user.getUserName()%>" type="hidden" name="userName">
            <text  type="text" class="form-control"  name="userName"><%=user.getUserName()%></text>
            <label>新密码</label>
            <input  type="password" value="" class="form-control" name="pass1">
            <label>重复密码</label>
            <input  type="password" value="" class="form-control" name="pass2">
          </div>
          <div>
            <button  type="submit" class=" mt-2 btn sg-button-default">
              <span class="text">修改</span>
            </button>
          </div>
        </form>

      </div>



    </div>



  </div>
</div>