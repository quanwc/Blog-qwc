package com.quanwc.blog.entity;
/**
 * User对应的实体类
 * @author 全文超
 * 2018-1-30 10:46:09
 *
 */
public class User {
	/** 用户id */
	private Integer id;
	/** 用户email */
	private String email;
	/** 用户名称  */
	private String nick;
	/** 用户密码 */
	private String password;
	/** 用户创建时间 */
	private Long createTimestamp;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return nick;
	}
	public void setUserName(String nick) {
		this.nick = nick;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getCreateTimestamp() {
		return createTimestamp;
	}
	public void setCreateTimestamp(Long createTimestamp) {
		this.createTimestamp = createTimestamp;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", nick=" + nick
				+ ", password=" + password + ", createTimestamp=" + createTimestamp + "]";
	}
	
}
