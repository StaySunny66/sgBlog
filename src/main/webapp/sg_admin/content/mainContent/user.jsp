<%@ page import="cn.shilight.blog.bean.User" %>
<%@ page import="cn.shilight.blog.basicutil.UserUtil" %>
<%@ page import="cn.shilight.blog.basicutil.LoginUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-lg-6">

    <!-- Circle Buttons -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold sg-text-default">用户信息修改</h6>
        </div>
        <div class="card-body " style="padding-top: 30px;padding-left: 10px">
            <div class="p-1 ">
                <p>修改你的个人信息</p>
                <div style="width: 100%; display: block;">
                    <form action="../UserInfUpdateServlet" method="post">

                        <% User user = LoginUtil.getUser(request);%>
                        <div class="form-group">
                            <label>用户名</label>
                            <input value="<%=user.getUserName()%>" type="hidden" name="userName">
                            <text  type="text" class="form-control"  name="userName"><%=user.getUserName()%></text>
                            <label>密码</label>
                            <a  href="./?view=changePass" class="form-control btn sg-button-default" name="password">点我修改</a>
                            <label>邮箱</label>
                            <input  type="text" value="<%=user.getEmail()%>" class="form-control" name="email">
                            <label>QQ号</label>
                            <input  type="text" value="<%=user.getQq()%>" class="form-control" name="qq">
                            <label>个性签名</label>
                            <input  type="text" value="<%=user.getWords()%>" class="form-control" name="words">
                            <label>注册日期</label>
                                <text id="l1" type="text"  class="form-control" name="copyright"><%=user.getRegDate()%></text>
                        </div>
                        <div>
                            <button  type="submit" class=" mt-2 btn sg-button-default">
                                <span class="text" >保存</span>
                            </button>

                        </div>

                    </form>

                </div>



            </div>



        </div>
    </div>


</div>