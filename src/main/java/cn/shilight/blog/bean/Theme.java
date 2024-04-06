package cn.shilight.blog.bean;

public class Theme {
    private String colorId;
    private String colorName;
    private String colorValue;

    public Theme() {
    }

    public Theme(String colorId, String colorName, String colorValue) {
        this.colorId = colorId;
        this.colorName = colorName;
        this.colorValue = colorValue;
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public String getColorValue() {
        return colorValue;
    }

    public void setColorValue(String colorValue) {
        this.colorValue = colorValue;
    }
}
