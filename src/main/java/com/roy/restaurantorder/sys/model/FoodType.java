package com.roy.restaurantorder.sys.model;

import java.util.Date;

public class FoodType {
    private Integer id;
    private String foodtype_name;
    private Date create_time;
    private Date update_time;
    private Integer disabled;

    public FoodType(Integer id, String foodtype_name, Date create_time, Date update_time, Integer disabled) {
        this.id = id;
        this.foodtype_name = foodtype_name;
        this.create_time = create_time;
        this.update_time = update_time;
        this.disabled = disabled;
    }

    public FoodType() {
        super();
    }

    @Override
    public String toString() {
        return "FoodType{" +
                "id=" + id +
                ", foodtype_name='" + foodtype_name + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", disabled=" + disabled +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFoodtype_name() {
        return foodtype_name;
    }

    public void setFoodtype_name(String foodtype_name) {
        this.foodtype_name = foodtype_name;
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
}
