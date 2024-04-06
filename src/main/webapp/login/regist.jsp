<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/16
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../theme.jsp"/>

<!DOCTYPE html>
<html lang="zh">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>后台登录</title>

  <!-- Custom fonts for this template-->
  <link href="../resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
          href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../resource/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body style="background-image: url(../resource/images/bg.jpg)">

<div class="container">

  <!-- Outer Row -->
  <div class="row justify-content-center">
    <div class="col-xl-6 col-lg-6 col-md-9 mt-5">
      <div class="card o-hidden border-0 shadow-lg my-5 " style="background: rgba(255,255,255,0.75)" >
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row"  >
            <div class="col-lg-12">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">注册账号</h1>
                </div>
                <form class="user" action="../RegistServlet" method="post">
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                           id="exampleInputEmail" aria-describedby="emailHelp" name="user"
                           placeholder="用户名">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                           id="exampleInputEmail11" aria-describedby="emailHelp" name="email"
                           placeholder="邮箱">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                           aria-describedby="emailHelp" name="qq"
                           placeholder="QQ号">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-user" name="pass1"
                           id="exampleInputPassword" placeholder="密码">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-user" name="pass2"
                           id="exampleInputPassword1" placeholder="重复密码">
                  </div>
                  <button class="btn sg-button-default btn-user btn-block" >
                    注册
                  </button>
                  <hr>

                </form>

              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

</div>


</body>

</html>