package cn.shilight.blog.basicutil;

import cn.shilight.blog.bean.Page;
import cn.shilight.blog.bean.Theme;
import cn.shilight.blog.dao.PageDao;
import cn.shilight.blog.dao.ThemeDao;

import java.util.List;

public class PageUtil {
    public static List<Page> getAll(){
        return  new PageDao().getAll();
    }
    public static int getNum(){

        return new PageDao().getNum().getCount();
    }

    public static Theme getTheme(String id){
        return new ThemeDao().get(id);
    }


}
