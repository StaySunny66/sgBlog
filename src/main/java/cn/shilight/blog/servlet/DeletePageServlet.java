package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.Page;
import cn.shilight.blog.dao.ArticleDao;
import cn.shilight.blog.dao.PageDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeletePageServlet", value = "/DeletePageServlet")
public class DeletePageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String id = request.getParameter("pageId");
        if(id!=null){
            if(new PageDao().deleteById(id)){
                HttpUtil.go("删除完成","sg_admin/?view=page ",response);
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
