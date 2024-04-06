package cn.shilight.blog.dao;

import cn.shilight.blog.DButil.DBUtil;
import cn.shilight.blog.bean.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDao {
    public boolean insert(User user){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "INSERT INTO user values(?,?,?,?,?,?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{user.getUserName(),user.getPassWord(),user.getEmail(),user.getQq(),user.getWords(),user.getRegDate()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public List<User> SearchByUAP(User user){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `user` WHERE userName = ? AND `passWord` =  ?";
        List<User> userList = null;
        try {
            userList = (List<User>) queryRunner.query(sql,new BeanListHandler(User.class),new Object[]{user.getUserName(),user.getPassWord()});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return userList;
    }

    public User getUser(String user){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "SELECT * FROM `user` WHERE userName = ?";
        User userList = null;
        try {
            userList = (User) queryRunner.query(sql,new BeanHandler(User.class),new Object[]{user});

        } catch (SQLException e) {
            System.out.println();
            e.printStackTrace();
        }
        return userList;
    }

    ////UPDATE `user` SET `email`='222', `qq`='222', `words`='222' WHERE (`userName`='123')

    public boolean update(User user){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `user` SET `email`=?, `qq`=?, `words`=? WHERE (`userName`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{user.getEmail(),user.getQq(),user.getWords(),user.getUserName()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

    public boolean passUpdate(User user){
        QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());
        String sql = "UPDATE `user` SET `passWord`=?  WHERE (`userName`=?)";
        int num = 0;
        try {
            num = queryRunner.update(sql,new Object[]{user.getPassWord(),user.getUserName()});
        } catch (SQLException e) {

        }
        return num > 0;
    }

}
