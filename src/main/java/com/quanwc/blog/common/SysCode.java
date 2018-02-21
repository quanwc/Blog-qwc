package com.quanwc.blog.common;

/**
 * 系统常量，包含登录状态码，执行状态码
 * @author 全文超
 * 2018-1-30 13:55:24
 */
public interface SysCode {

	// 状态码
	/**
	 * 成功
	 */
	int SUCCESS = 200;

	/**
	 * 失败
	 */
	int FAIL = 400;

	/**
	 * 系统错误，请联系管理员
	 */
	int SYS_ERROR = 403;

	/**
	 * 图片保存出错
	 */
	int FILE_SAVE_ERROR = 405;

}
