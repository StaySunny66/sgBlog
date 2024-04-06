package cn.shilight.blog.basicutil;

import cn.shilight.blog.bean.Article;
import cn.shilight.blog.dao.ArticleDao;

import java.util.List;

public class ArticleUtil {
    public static List<Article>getAll(){
         return new ArticleDao().getAll();
    }
    public static Article getArticle(String id){
        return new ArticleDao().getById(id);
    }
    public static List<Article> getByClass(String classId){

        return new ArticleDao().getByClass(classId);
    }
    public static int getNum(){
        return new ArticleDao().getNum().getCount();
    }

}
