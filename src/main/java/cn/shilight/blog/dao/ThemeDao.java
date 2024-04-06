package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.Article;
import cn.shilight.blog.bean.Theme;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class ThemeDao {
    public boolean insert(Theme theme){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "INSERT INTO theme values(?,?,?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{theme.getColorId(),theme.getColorName(),theme.getColorValue()});
        } catch (SQLException e) {

        }
        return num > 0;


    }


    public Theme get(String id){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `theme` where colorId = ?";
        Theme theme = null;
        try {
            theme = (Theme) queryRunner.query(sql,new BeanHandler(Theme.class),new Object[]{id});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return theme;

    }

    public boolean setTheme(Theme theme){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `theme` SET `colorValue` = ? where colorId = ?";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{theme.getColorValue(),theme.getColorId()});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return num>0;

    }
}
