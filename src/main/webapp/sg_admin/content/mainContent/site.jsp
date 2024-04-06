<%@ page import="cn.shilight.blog.bean.SiteConfig" %>
<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %>
<%@ page import="cn.shilight.blog.basicutil.PageUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row pl-4 pr-4" >
    <div class="col-lg-6">

        <!-- Circle Buttons -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold sg-text-default">站点基本配置</h6>
            </div>
            <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                <div class="p-1 ">
                    <p>你可以在这里轻松定义站点首页的相关信息</p>
                    <% SiteConfig siteConfig = HttpUtil.getSiteMessage();%>

                    <div style="width: 100%; display: block;">
                        <form action="../SiteCongifUpdateServlet" method="post">

                            <div class="form-group">
                                <label >站点标题</label>
                                <input value="<%=siteConfig.getTittle()%>"  type="text" class="form-control" name="tittle">
                                <label >副标题</label>
                                <input value="<%=siteConfig.getTittle2()%>" type="text" class="form-control" name="tittle2">
                                <label >ICP备案号</label>
                                <input value="<%=siteConfig.getBeiancode()%>" type="text" class="form-control" name="beiancode">
                                <label >公安备案号</label>
                                <input value="<%=siteConfig.getGonganbeian()%>" type="text" class="form-control" name="gonganbeian">
                                <label >站点个人昵称</label>
                                <input value="<%=siteConfig.getName()%>" type="text" class="form-control" name="name">
                                <label >版权信息</label>
                                <input value="<%=siteConfig.getCopyright()%>" type="text" class="form-control" name="copyright">
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
    <div class="col-lg-6">

        <!-- Circle Buttons -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold sg-text-default">颜色配置</h6>
            </div>
            <div class="card-body " style="padding-top: 30px;padding-left: 10px">
                <div class="p-1 ">
                    <p>不同的颜色 不同的心情</p>
                    <%
                    String color = PageUtil.getTheme("1").getColorValue();

                    %>

                    <div style="width: 100%; display: block;">

                                <form action="../SetThemeServlet" method="post">

                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" name="colorValue" value="#FF9800" <% if(color.equals("#FF9800")){out.print("checked");}%> >
                                        <label class="form-check-label" >活力橙</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input"  name="colorValue" value="#8BC34A" <% if(color.equals("#8BC34A")){out.print("checked");}%>>
                                        <label class="form-check-label" >原谅绿</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input"  name="colorValue" value="#FF4081" <% if(color.equals("#FF4081")){out.print("checked");}%>>
                                        <label class="form-check-label" >可爱粉</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input"  name="colorValue" value="#2196F3" <% if(color.equals("#2196F3")){out.print("checked");}%>>
                                        <label class="form-check-label" >青涩蓝</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input"  name="colorValue" value="#DF7070" <% if(color.equals("#DF7070")){out.print("checked");}%>>
                                        <label class="form-check-label" >默认颜色</label>
                                    </div>

                                    <button  type="submit" class=" mt-2 btn sg-button-default">
                                        <span class="text mt-2" >保存</span>
                                    </button>
                                </form>
                            </div>

                </div>



            </div>
        </div>


    </div>

</div>
