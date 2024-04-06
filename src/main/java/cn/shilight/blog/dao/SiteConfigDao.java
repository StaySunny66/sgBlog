package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.SiteConfig;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class SiteConfigDao {

    public boolean update(SiteConfig siteConfig){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `siteconfig` SET `tittle`=?, `tittle2`=?, `beiancode`=?, `gonganbeian`=?, `name`=?, `copyright`=? WHERE (`id`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{siteConfig.getTittle(),siteConfig.getTittle2(),siteConfig.getBeiancode(),siteConfig.getGonganbeian(),siteConfig.getName(),siteConfig.getCopyright(),siteConfig.getId()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public SiteConfig get(){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `siteconfig` where id = '778852'";
        SiteConfig siteConfig= null;
        try {
            siteConfig = queryRunner.query(sql,new BeanHandler<>(SiteConfig.class));
        } catch (SQLException e) {

        }
        return siteConfig;
    }


}
