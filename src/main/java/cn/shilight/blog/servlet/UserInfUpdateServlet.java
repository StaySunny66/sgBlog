package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "UserInfUpdateServlet", value = "/UserInfUpdateServlet")
public class UserInfUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String words = request.getParameter("words");
        String qq = request.getParameter("qq");
        System.out.println(userName+email+words+qq);
        if(new UserDao().update(new User(userName,null,email,qq,words,null))){
            HttpUtil.go("修改完成","sg_admin?view=user",response);
        }else{
            //注册失败
            HttpUtil.setError("修改失败",response);
        }
    }
}
