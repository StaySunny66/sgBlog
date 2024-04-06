package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.basicutil.LoginUtil;
import cn.shilight.blog.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String user = request.getParameter("user");
          String pass = request.getParameter("pass");
          response.setContentType("text/html;charset=utf-8");
          if(user==null||pass==null){
              HttpUtil.setError("登录参数有误",response);
              return;
          }
          if(LoginUtil.login(new User(user,pass,null,null,null,null),request,response)){
              response.sendRedirect("./sg_admin");
          }else {
              HttpUtil.setError("登录失败",response);

          }


    }
}
