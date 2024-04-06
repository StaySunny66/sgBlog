<%@ page import="cn.shilight.blog.bean.User" %>
<%@ page import="cn.shilight.blog.bean.SiteConfig" %>
<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 0:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../theme.jsp"/>
<ul class="navbar-nav sidebar sidebar-dark sg-bg accordion" id="accordionSidebar">

  <!-- Sidebar - Brand -->
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./">

    <% SiteConfig siteConfig = HttpUtil.getSiteMessage();%>
    <div class="sidebar-brand-text mx-3"><%=siteConfig.getTittle()%><sup>后台</sup></div>
  </a>

  <!-- Divider -->
  <hr class="sidebar-divider my-0">

  <!-- Nav Item - Dashboard -->
  <li class="nav-item active">
    <a class="nav-link" href="./">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>总览</span></a>
  </li>

  <!-- 分割线 -->
  <hr class="sidebar-divider">


  <!-- 标题 -->
  <div class="sidebar-heading">
    功能选择
  </div>

  <!-- 菜单 1 -->
  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne"
       aria-expanded="true" aria-controls="collapseOne">
      <i class="fas fa-fw fa-cog"></i>
      <span>内容管理</span>
    </a>
    <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <h6 class="collapse-header sg-text-default">管理你的资源</h6>
        <a class="collapse-item" href="?view=article">文章</a>
        <a class="collapse-item" href="?view=page">页面</a>
      </div>
    </div>
  </li>

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
       aria-expanded="true" aria-controls="collapseTwo">
      <i class="fas fa-fw fa-cog"></i>
      <span>网站管理</span>
    </a>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <h6 class="collapse-header sg-text-default">管理你的网站</h6>
        <a class="collapse-item" href="?view=user">用户信息</a>
        <a class="collapse-item" href="?view=site">站点信息</a>
      </div>
    </div>
  </li>






  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block">

  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>
