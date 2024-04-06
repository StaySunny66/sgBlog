package cn.shilight.blog.bean;

public class SiteCount {
    private String id;
    private String name;
    private long   counts;

    public SiteCount() {
    }

    public SiteCount(String id, String name, long counts) {
        this.id = id;
        this.name = name;
        this.counts = counts;
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

    public long getCounts() {
        return counts;
    }

    public void setCounts(long counts) {
        this.counts = counts;
    }
}
