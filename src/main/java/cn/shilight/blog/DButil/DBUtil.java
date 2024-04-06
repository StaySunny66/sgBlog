package cn.shilight.blog.DButil;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;

public class DBUtil {
    private static DataSource dataSource = null;
    private static ComboPooledDataSource comboPooledDataSource;
    static {
        comboPooledDataSource = new ComboPooledDataSource();
        dataSource = comboPooledDataSource;

    }

    public static DataSource getDataSource() {
        return dataSource;
    }
    public static ComboPooledDataSource getBdMessage(){
        return comboPooledDataSource;
    }
}
