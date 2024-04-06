package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.Theme;
import cn.shilight.blog.dao.ThemeDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SetThemServlet", value = "/SetThemeServlet")
public class SetThemeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String colorValue = request.getParameter("colorValue");
        if(new ThemeDao().setTheme(new Theme("1",null,colorValue))){
            response.sendRedirect("./sg_admin/?view=site");
        }else {
            HttpUtil.setError("失败",response);

        }

    }
}
