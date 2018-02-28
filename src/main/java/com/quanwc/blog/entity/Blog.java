package com.quanwc.blog.entity;

import java.util.Date;


/**
 * Blog对应的实体类
 * @author 全文超
 * 2018-1-30 11:35:46
 *
 */
public class Blog {
	/** 博客id */
	private Integer id;
	/** 标题title */
	private String title;
	/** 作者author */
	private String author;
	/** md */
	private String md;
	/** html */
	private String html;
	/** 创建时间  */
	private Date createTimestamp;
	/** 修改时间 */
	private Date updateTimestamp;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getMd() {
		return md;
	}
	public void setMd(String md) {
		this.md = md;
	}
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
	public Date getCreateTimestamp() {
		return createTimestamp;
	}
	public void setCreateTimestamp(Date createTimestamp) {
		this.createTimestamp = createTimestamp;
	}
	public Date getUpdateTimestamp() {
		return updateTimestamp;
	}
	public void setUpdateTimestamp(Date updateTimestamp) {
		this.updateTimestamp = updateTimestamp;
	}
	
	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", author=" + author + ", md="
				+ md + ", html=" + html + ", createTimestamp=" + createTimestamp
				+ ", updateTimestamp=" + updateTimestamp + "]";
	}
	
}
