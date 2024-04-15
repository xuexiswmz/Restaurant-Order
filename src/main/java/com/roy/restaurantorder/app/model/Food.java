package com.roy.restaurantorder.app.model;

import java.util.Date;

public class Food {
    private Integer id;
    private String foodname;
    private Integer foodtype_id;
    private Double price;
    private String remark;
    private String img;
    private Date create_time;
    private Date update_time;
    private Integer disabled;
    private Integer buyNum;

    @Override
    public String toString() {
        return "Food{" +
                "id=" + id +
                ", foodname='" + foodname + '\'' +
                ", foodtype_id=" + foodtype_id +
                ", price=" + price +
                ", remark='" + remark + '\'' +
                ", img='" + img + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", disabled=" + disabled +
                ", buyNum=" + buyNum +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public Integer getFoodtype_id() {
        return foodtype_id;
    }

    public void setFoodtype_id(Integer foodtype_id) {
        this.foodtype_id = foodtype_id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public Integer getDisabled() {
        return disabled;
    }

    public void setDisabled(Integer disabled) {
        this.disabled = disabled;
    }

    public Integer getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(Integer buyNum) {
        this.buyNum = buyNum;
    }
}
