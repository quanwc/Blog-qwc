package com.quanwc.blog.entity;
/**
 * 标签tag对应的实体类
 * @author 全文超
 * 2018-1-30 11:19:17
 *
 */
public class Tag {
	/** 标签id */
	private Integer id;
	/** 标签名称 */
	private String name;
	
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
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Tag [id=" + id + ", name=" + name + "]";
	}
	
}
