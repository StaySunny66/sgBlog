package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.dao.ArticleDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.rmi.server.RemoteRef;

@WebServlet(name = "DeleteArticleServlet", value = "/DeleteArticleServlet")
public class DeleteArticleServlet extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String id = request.getParameter("articleId");
        if(id!=null){
            if(new ArticleDao().deleteById(id)){
                HttpUtil.go("删除完成","sg_admin/?view=article ",response);
            }
            HttpUtil.setError("删除失败",response);
        }else {
            HttpUtil.setError("数据不合法",response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




    }
}
