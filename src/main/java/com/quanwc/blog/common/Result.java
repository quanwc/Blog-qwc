package com.quanwc.blog.common;
/**
 * 返回前台的数据
 * @author 全文超
 * 2018-1-29 14:50:30
 *
 */
public class Result {
	private int code;// 状态码
	private String message;// 信息
	private Object data;// 数据
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		return "Result [code=" + code + ", message=" + message + ", data=" + data + "]";
	}
	
}
