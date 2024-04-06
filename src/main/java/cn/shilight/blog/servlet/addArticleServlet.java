package cn.shilight.blog.servlet;

import cn.shilight.blog.bean.Article;
import cn.shilight.blog.dao.ArticleDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "addArticleServlet", value = "/addArticleServlet")
public class addArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String classId = request.getParameter("classId");
        String content = request.getParameter("content");
        String user = request.getParameter("username");

        if(new ArticleDao().insert(new Article(null,name,user,content,classId,new Date()))){
            response.getWriter().print("{\"state\": 200}");
        }else{
            response.getWriter().print("{\"state\": 201}");
        }




    }
}
