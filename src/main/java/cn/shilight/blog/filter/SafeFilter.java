package cn.shilight.blog.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "SafeFilter",urlPatterns = {"/sg_admin/*","/addPageServlet","/addArticleServlet","/changePassServlet","/DeletePageServlet"
        ,"/DeleteArticleServlet","/ReNewArticleServlet","/SiteConfigServlet","/UserInfUpdateServlet"})
public class SafeFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {

    }

    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        HttpServletResponse res = (HttpServletResponse)response;
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session =  req.getSession();
        if(session.getAttribute("userinf")!=null){
            chain.doFilter(request, response);
        }else {
            ((HttpServletResponse) response).sendRedirect("../login?red="+((HttpServletRequest) request).getRequestURI()+((HttpServletRequest) request).getQueryString());
        }

    }
}
