package cn.shilight.blog.basicutil;

import cn.shilight.blog.bean.User;
import cn.shilight.blog.dao.UserDao;

public class UserUtil {

    public static boolean signUp(User user){
        return (new UserDao().insert(user));
    }
    public static User getUser(String user){
        return new UserDao().getUser(user);
    }
}
