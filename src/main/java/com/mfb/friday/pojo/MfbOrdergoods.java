package com.mfb.friday.pojo;

public class MfbOrdergoods {
    private Integer id;

    private Integer orderId;

    private Integer goodsId;
    
    public void setAll(Integer orderId,Integer goodsId) 
    {
    	this.orderId=orderId;
    	this.goodsId=goodsId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }
}