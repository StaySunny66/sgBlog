package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.Count;
import cn.shilight.blog.bean.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ArticleDao {
    public boolean insert(Article article){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "INSERT INTO article values(?,?,?,?,?,?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{article.getId(),article.getName(),article.getUser(),article.getContent(),article.getClassId(),article.getDate()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public boolean update(Article article){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `article` SET `name`=?,  `user` = ?, `content`=?, `classId`=? WHERE (`id`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{article.getName(),article.getUser(),article.getContent(),article.getClassId(),article.getId()});
        } catch (SQLException e) {

        }
        return num > 0;
    }


    public boolean deleteById(String articleId){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "DELETE FROM `article` WHERE (`id`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{articleId});
        } catch (SQLException e) {

        }
        return num > 0;
    }


    public List<Article> getAll(){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `article`";
        List<Article> articleList = null;
        try {
            articleList = (List<Article>) queryRunner.query(sql,new BeanListHandler(Article.class));

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return articleList;
    }

    public Article getById(String id){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `article` where id = ?";
        Article article = null;
        try {
            article = (Article) queryRunner.query(sql,new BeanHandler(Article.class),new Object[]{id});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return article;
    }

    public List<Article> getByClass(String classId){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `article` where classId = ?";
        List<Article> articleList = null;
        try {
            articleList = (List<Article>) queryRunner.query(sql,new BeanListHandler(Article.class),new Object[]{classId});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return articleList;
    }


    public Count getNum(){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT count(*) as count FROM `article`";
        Count count = null;
        try {
            count = (Count) queryRunner.query(sql,new BeanHandler(Count.class));
        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return count;
    }



}
