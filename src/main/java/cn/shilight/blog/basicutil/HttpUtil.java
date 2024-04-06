package cn.shilight.blog.basicutil;

import cn.shilight.blog.bean.SiteConfig;
import cn.shilight.blog.dao.SiteConfigDao;
import cn.shilight.blog.dao.SiteCountDao;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HttpUtil {
    public static void  setError(String message, HttpServletResponse httpServletResponse){
        try {
            httpServletResponse.getWriter().print(
                    "<script language=\"JavaScript\">\r\n"+
                    " alert(\""+ message+"\");\r\n" +
                    " history.back();\r\n" +
                    "</script>");

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    public static void go(String message, String url,HttpServletResponse httpServletResponse){
        try {
            httpServletResponse.getWriter().print(
                    "<script language=\"JavaScript\">\r\n"+
                            " alert(\""+ message+"\");\r\n" +
                            " window.location.href = \"./"+url+"\";\r\n" +
                            "</script>");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static SiteConfig getSiteMessage(){
        return new SiteConfigDao().get();
    }

    public static boolean siteCountAdd(){
        return new SiteCountDao().add("0");
    }

    public static long getCount(){
        return new SiteCountDao().getCount("0").getCounts();
    }

}
