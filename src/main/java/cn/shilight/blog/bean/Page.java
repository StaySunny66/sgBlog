package cn.shilight.blog.bean;

public class Page {
    String pageId;
    String name;
    String state;

    public Page() {
    }

    public Page(String pageId, String name, String state) {
        this.pageId = pageId;
        this.name = name;
        this.state = state;
    }

    public String getPageId() {
        return pageId;
    }

    public void setPageId(String pageId) {
        this.pageId = pageId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
