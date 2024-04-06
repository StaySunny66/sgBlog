package cn.shilight.blog.basicutil;

import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.UserDao;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginUtil {
    public static boolean check(User user){
        return !(new UserDao().SearchByUAP(user).isEmpty());
    }

    // 校验登录数据,签发 Session 保存用户登录信息
    public static boolean login(User user, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse){
        HttpSession session = httpServletRequest.getSession();
        if(check(user)){
            session.setAttribute("userinf",user);
            Cookie cookie = new Cookie("JSESSIONID",session.getId());
            cookie.setPath("/");
            cookie.setMaxAge(3600);
            httpServletResponse.addCookie(cookie);
            return true;
        }
        return false;
    }
    public static User getUser(HttpServletRequest request){
        HttpSession session = request.getSession();
        return new UserDao().getUser(((User)session.getAttribute("userinf")).getUserName());
    }
}
