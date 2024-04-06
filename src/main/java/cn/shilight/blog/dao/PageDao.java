package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.Count;
import cn.shilight.blog.bean.Page;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class PageDao {
    public boolean insert(Page page){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "INSERT INTO page values(?,?,?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{page.getPageId(),page.getName(),page.getState()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public List<Page> getAll(){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `page`";
        List<Page> pageList = null;
        try {
            pageList = (List<Page>) queryRunner.query(sql,new BeanListHandler(Page.class));

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return pageList;
    }
    public Count getNum(){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT count(*) as count FROM `page`";
        Count count = null;
        try {
            count = (Count) queryRunner.query(sql,new BeanHandler(Count.class));
        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return count;
    }

    public boolean deleteById(String pageId){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "DELETE FROM `page` WHERE (`pageId`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{pageId});
        } catch (SQLException e) {

        }
        return num > 0;
    }
}
