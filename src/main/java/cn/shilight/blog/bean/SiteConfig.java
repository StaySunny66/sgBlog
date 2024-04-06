package cn.shilight.blog.bean;

public class SiteConfig {

    String   id;
    String   tittle;
    String   tittle2;
    String   beiancode;
    String   gonganbeian;
    String   name;
    String   copyright;

    public SiteConfig() {
    }

    public SiteConfig(String tittle, String tittle2, String beiancode, String gonganbeian, String name, String copyright) {
        this.id = "778852";
        this.tittle = tittle;
        this.tittle2 = tittle2;
        this.beiancode = beiancode;
        this.gonganbeian = gonganbeian;
        this.name = name;
        this.copyright = copyright;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getTittle2() {
        return tittle2;
    }

    public void setTittle2(String tittle2) {
        this.tittle2 = tittle2;
    }

    public String getBeiancode() {
        return beiancode;
    }

    public void setBeiancode(String beiancode) {
        this.beiancode = beiancode;
    }

    public String getGonganbeian() {
        return gonganbeian;
    }

    public void setGonganbeian(String gonganbeian) {
        this.gonganbeian = gonganbeian;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }
}
