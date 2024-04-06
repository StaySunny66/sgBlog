<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %>
<%@ page import="cn.shilight.blog.bean.SiteConfig" %>
<%@ page import="cn.shilight.blog.bean.User" %>
<%@ page import="cn.shilight.blog.basicutil.UserUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/16
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<style>

  .tittle{
    inline-size: 0;
    text-decoration: none;
    color: #000000;
  }
  .tittle:hover{
    color: #000000;
  }



</style>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%SiteConfig siteConfig= HttpUtil.getSiteMessage(); %>
<jsp:include page="../theme.jsp"/>

<div style="width: 25%;height: 600px;" >
  <div style="width: 100%;text-align: center " >
    <a style="text-decoration: none" class="tittle" href="./">
      <h1><%=siteConfig.getTittle()%></h1>
    </a>
  </div>
  <div style="width: 100%;text-align: center;margin-top: 10px" >
    <h6><%=siteConfig.getTittle2()%></h6>
  </div>

  <div style="text-align: center;margin-top: 20px">
    <a href="sg_admin">
        <img  style=" width: 100px;border-radius: 50%" src="resource/images/tx.png">
    </a>

    <p style="margin-top: 10px ;margin-bottom: 2px"><%=siteConfig.getName()%></p>
    <p class="sg-text-default" style=" margin: 0;"><%=UserUtil.getUser("admin").getWords()%></p>
  </div>


  <div style="width: 100%;text-align: center;margin-top: 60px" >
    <p class="sg-text-default"><%=siteConfig.getBeiancode()%></p>
    <p class="sg-text-default"><%=siteConfig.getGonganbeian()%></p>
  </div>


</div>
