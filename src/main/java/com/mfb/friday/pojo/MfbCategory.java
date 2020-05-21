package com.mfb.friday.pojo;

import java.util.Date;

public class MfbCategory {
    private Integer id;

    private String name;

    private Integer status;

    private Date createTime;

    private Date updateTime;

    public void setAll(String name,int status,Date create_time,Date update_time) 
    {
    	this.name=name;
    	this.status=status;
    	this.createTime=create_time;
    	this.updateTime=update_time;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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