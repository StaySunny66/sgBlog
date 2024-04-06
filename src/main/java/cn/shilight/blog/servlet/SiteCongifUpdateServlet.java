package cn.shilight.blog.servlet;

import cn.shilight.blog.basicutil.HttpUtil;
import cn.shilight.blog.bean.SiteConfig;
import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.SiteConfigDao;
import cn.shilight.blog.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SiteCongifUpdateServlet", value = "/SiteCongifUpdateServlet")
public class SiteCongifUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String tittle = request.getParameter("tittle");
        String tittle2 = request.getParameter("tittle2");
        String beiancode = request.getParameter("beiancode");
        String gonganbeian = request.getParameter("gonganbeian");
        String copyright = request.getParameter("copyright");
        String name = request.getParameter("name");


        if(new SiteConfigDao().update(new SiteConfig(tittle,tittle2,beiancode,gonganbeian,name,copyright))){
            HttpUtil.go("修改完成","sg_admin?view=site",response);
        }else{
            //注册失败
            HttpUtil.setError("修改失败",response);
        }


    }
}
