<%@ page import="cn.shilight.blog.basicutil.ArticleUtil" %>
<%@ page import="cn.shilight.blog.basicutil.PageUtil" %>
<%@ page import="cn.shilight.blog.DButil.DBUtil" %>
<%@ page import="cn.shilight.blog.basicutil.HttpUtil" %><%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/17
  Time: 0:11
  总览界面
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../../theme.jsp"/>

<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800 ">总览</h1>
  </div>

  <!-- Content Row -->
  <div class="row">

    <!-- 显示文章 数量 -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold sg-text-default text-uppercase mb-1">
                文章总数 (篇)</div>
              <div class="h5 mb-0 font-weight-bold sg-text-default"><%=ArticleUtil.getNum()%></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-calendar fa-2x sg-text-default"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold sg-text-default text-uppercase mb-1">
                页面数量 (个)</div>
              <div class="h5 mb-0 font-weight-bold sg-text-default"><%=PageUtil.getNum()%></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-book fa-2x sg-text-default"></i>
            </div>
          </div>
        </div>
      </div>
    </div>



    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold sg-text-default text-uppercase mb-1">
                累计访问次数</div>
              <div class="h5 mb-0 font-weight-bold sg-text-default" id="web_open"><%=HttpUtil.getCount()%></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-table fa-2x sg-text-default"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="card shadow mb-4 ">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold sg-text-default">版本信息</h6>
    </div>
    <div class="card-body row">
      <div class="col-lg-6">
        <h1 class="h5"> MySQL 状态</h1>
        <hr>
        <p>数据库驱动 ：<%=DBUtil.getBdMessage().getDriverClass()%> </p>
        <p>最大连接数 ：<%=DBUtil.getBdMessage().getMaxPoolSize()%> </p>
        <p>当前连接数 ：<%=DBUtil.getBdMessage().getNumConnections()%> </p>
        <p>活跃的连接数 ：<%=DBUtil.getBdMessage().getNumBusyConnections()%> </p>
      </div>
      <div class="col-lg-6">
        <h1 class="h5"> Tomcat 信息</h1>
        <hr>
        <p>版本：<%=application.getServerInfo()%> </p>
        <p>Session 有效期 ：<%=application.getSessionTimeout()%> 分钟 </p>
      </div>

    </div>
  </div>


</div>