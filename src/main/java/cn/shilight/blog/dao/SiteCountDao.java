package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.Count;
import cn.shilight.blog.bean.SiteCount;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class SiteCountDao {

    public boolean add(String id){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `siteCount` SET `counts` = `counts` + 1 WHERE (`id`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{id});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public SiteCount getCount(String id){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `siteCount` where id = ?";
        SiteCount count = null;
        try {
            count = (SiteCount) queryRunner.query(sql,new BeanHandler(SiteCount.class),new Object[]{id});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return count;

    }
}
