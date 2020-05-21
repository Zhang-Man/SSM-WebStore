package com.mfb.friday.pojo;

import java.util.Date;

public class MfbCart {
    private Integer id;

    private Integer userId;

    private Integer price;

    private Integer checked;

    private Integer quantity;

    private Date createTime;

    private Date updateTime;
    
    public void setAll(Integer userId,Integer price,Integer checked,Integer quantity,Date createTime,Date updateTime) 
    {
    	this.userId=userId;
    	this.price=price;
    	this.checked=checked;
    	this.quantity=quantity;
    	this.createTime=createTime;
    	this.updateTime=updateTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getChecked() {
        return checked;
    }

    public void setChecked(Integer checked) {
        this.checked = checked;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}