<%--
  Created by IntelliJ IDEA.
  User: 17901
  Date: 2022/11/16
  Time: 16:44
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
    <title>管理登录</title>
    <!-- Custom fonts for this template-->
    <link href="../resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="../resource/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="" style="background-image: url(../resource/images/bg.jpg)">
<div class="container">
    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9 mt-5">

            <div class="card o-hidden border-0 shadow-lg my-5 "  style="background-color: rgba(255,255,255,0.65)">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block p-5  " >

                            <div class="text-center p-3 mt-3">
                                <h1 class="h1 mb-4 sg-text-default">矢光博客</h1>
                            </div>

                            <div class="text-center p-1 ">
                                <h1 class="h5 sg-text-default" >红了樱桃，绿了芭蕉..</h1>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">登录!</h1>
                                </div>
                                <form class="user" action="../LoginServlet" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user"
                                               id="exampleInputEmail" aria-describedby="emailHelp" name="user"
                                               placeholder="用户名...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" name="pass"
                                               id="exampleInputPassword" placeholder="密码">
                                    </div>
                                    <button class="sg-button-default btn btn-user btn-block" >
                                        登录
                                    </button>
                                    <hr>
                                </form>
                                <div class="text-center">
                                    <a class="small sg-text-default" href="../"><-回到首页</a>
                                </div>
                                <div class="text-center">
                                    <a class="small  sg-text-default" href="regist.jsp">注册账号 !</a>
                                </div>
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
