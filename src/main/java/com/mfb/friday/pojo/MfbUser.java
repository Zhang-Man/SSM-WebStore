package com.mfb.friday.pojo;

import java.util.Date;

public class MfbUser {
    private Integer id;

    private String username;

    private String password;
    
    private String role;

    public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	private String sex;

    private Date birthday;

    private String tel;

    private String mail;

    private Date createTime;

    private Date updateTime;

    
    public void setAll(String username,String password,String role,String sex,Date birthday,String tel,String mail,Date createTime,Date updateTime) 
    {
    	this.username=username;
    	this.password=password;
    	this.role=role;
    	this.sex=sex;
    	this.birthday=birthday;
    	this.tel=tel;
    	this.mail=mail;
    	this.createTime=createTime;
    	this.updateTime=updateTime;
    }
    
    public void setUsernameAndPassword(String username,String password) 
    {
    	this.username=username;
    	this.password=password;
    }
    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail == null ? null : mail.trim();
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