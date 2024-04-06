package cn.shilight.blog.bean;

import java.util.Date;

public class User {
    private String userName;
    private String passWord;
    private String email;
    private String qq;
    private String words;
    private Date   regDate;
    public User(){

    }

    public User(String userName, String passWord, String email, String qq, String words, Date regDate) {
        this.userName = userName;
        this.passWord = passWord;
        this.email = email;
        this.qq = qq;
        this.words = words;
        this.regDate = regDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }


    public String getWords() {
        return words;
    }

    public void setWords(String words) {
        this.words = words;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }
}
