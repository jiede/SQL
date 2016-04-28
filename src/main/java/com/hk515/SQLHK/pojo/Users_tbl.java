package com.hk515.SQLHK.pojo;

import java.util.Date;

import com.wordnik.swagger.annotations.ApiModel;
import com.wordnik.swagger.annotations.ApiModelProperty;

@ApiModel(value = "Users_tbl")
public class Users_tbl {
	private String usersTblId;

	private String realname;// ’Ê µ–’√˚

	private String loginname;

	private String password;

	private String description;

	private String phone;

	private String email;

	private Boolean isvalid;

	private String faceimg;

	private Boolean isdelete;

	private String createuserid;

	private Date createdatetime;

	private String updateuserid;

	private Date updatedatetime;

	public String getUsersTblId() {
		return usersTblId;
	}

	public void setUsersTblId(String usersTblId) {
		this.usersTblId = usersTblId == null ? null : usersTblId.trim();
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname == null ? null : realname.trim();
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname == null ? null : loginname.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description == null ? null : description.trim();
	}

	@ApiModelProperty(value = "pet status in the store", allowableValues = "available,pending,sold")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public Boolean getIsvalid() {
		return isvalid;
	}

	public void setIsvalid(Boolean isvalid) {
		this.isvalid = isvalid;
	}

	public String getFaceimg() {
		return faceimg;
	}

	public void setFaceimg(String faceimg) {
		this.faceimg = faceimg == null ? null : faceimg.trim();
	}

	public Boolean getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}

	public String getCreateuserid() {
		return createuserid;
	}

	public void setCreateuserid(String createuserid) {
		this.createuserid = createuserid == null ? null : createuserid.trim();
	}

	public Date getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	public String getUpdateuserid() {
		return updateuserid;
	}

	public void setUpdateuserid(String updateuserid) {
		this.updateuserid = updateuserid == null ? null : updateuserid.trim();
	}

	public Date getUpdatedatetime() {
		return updatedatetime;
	}

	public void setUpdatedatetime(Date updatedatetime) {
		this.updatedatetime = updatedatetime;
	}
}