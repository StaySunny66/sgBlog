package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "RegistServlet", value = "/RegistServlet")
public class RegistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        String userName = request.getParameter("user");
        String passWord1 = request.getParameter("pass1");
        String passWord2 = request.getParameter("pass2");
        String email = request.getParameter("email");
        String qq = request.getParameter("qq");
        Date date = new Date();

        if(userName == null||passWord1.length()<6){
            HttpUtil.setError("密码为空或小于6位",response);
            return;
        }
        if(!passWord1.equals(passWord2)){
            HttpUtil.setError("两次密码不同",response);
            return;
        }

        if(new UserDao().insert(new User(userName,passWord1,email,qq,null,date))){
            ///注册成功
            HttpUtil.go("成功,请登录","login/",response);

        }else{
            HttpUtil.setError("注册失败！用户名可能已存在",response);
            //注册失败
        }




    }
}
