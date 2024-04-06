package cn.shilight.blog.bean;

import java.util.Date;

public class Article {
    public String id;
    public String name;
    public String user;
    public String content;
    public String classId;
    public Date date;

    public Article() {
    }

    public Article(String id, String name,String user, String content, String classId, Date date) {
        this.id = id;
        this.name = name;
        this.user = user;
        this.content = content;
        this.classId = classId;
        this.date = date;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
