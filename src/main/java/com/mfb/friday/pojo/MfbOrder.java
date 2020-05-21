package com.mfb.friday.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class MfbOrder {
    private Integer id;

    private Integer userId;

    private Integer orderId;

    private BigDecimal payment;

    private Integer paymentType;

    private String shippingId;

    private Date createTime;

    private Date updateTime;

    private Integer status;

    private Date paymentTime;

    private Date sendTime;

    private Date endTime;

    private Date closeTime;

    public void setAll(Integer userId,Integer orderId,BigDecimal payment,Integer paymentType,String shippingId
    					,Date createTime,Date updateTime,Integer status,Date paymentTime,Date sendTime,Date endTime,Date closeTime) 
    {
    	this.userId=userId;
    	this.orderId=orderId;
    	this.payment=payment;
    	this.paymentType=paymentType;
    	this.shippingId=shippingId;
    	this.createTime=createTime;
    	this.updateTime=updateTime;
    	this.status=status;
    	this.paymentTime=paymentTime;
    	this.sendTime=sendTime;
    	this.endTime=endTime;
    	this.closeTime=closeTime;
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

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public BigDecimal getPayment() {
        return payment;
    }

    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    public Integer getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(Integer paymentType) {
        this.paymentType = paymentType;
    }

    public String getShippingId() {
        return shippingId;
    }

    public void setShippingId(String shippingId) {
        this.shippingId = shippingId == null ? null : shippingId.trim();
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }
}