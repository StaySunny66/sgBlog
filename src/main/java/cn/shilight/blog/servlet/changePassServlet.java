package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "changePassServlet", value = "/changePassServlet")
public class changePassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        String passWord1 = request.getParameter("pass1");
        String passWord2 = request.getParameter("pass2");
        HttpSession session = request.getSession();
        String user = ((User)session.getAttribute("userinf")).getUserName();

        if(passWord1 == null||passWord2 == null){
            HttpUtil.setError("密码为空",response);
            return;
        }
        if(!passWord1.equals(passWord2)){
            HttpUtil.setError("密码不相同",response);
            return;
        }
        if(new UserDao().passUpdate(new User(user,passWord1,null,null,null,null))){
            HttpUtil.go("修改完成,请重新登陆","./LogoutServlet",response);
        }


    }
}
