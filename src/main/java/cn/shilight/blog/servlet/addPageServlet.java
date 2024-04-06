package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.Page;
import cn.shilight.blog.dao.ArticleDao;
import cn.shilight.blog.dao.PageDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "addPageServlet", value = "/addPageServlet")
public class addPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("PageName");
        if(new PageDao().insert(new Page(null,name,"1"))){
            HttpUtil.go("完成","./sg_admin/?view=page",response);
        }else{
            HttpUtil.setError("添加失败",response);
        }
    }
}
