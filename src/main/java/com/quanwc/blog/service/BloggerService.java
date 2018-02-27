package com.quanwc.blog.service;

import com.quanwc.blog.entity.Blog;

/**
 * 博主对应的接口
 * @author 全文超
 * 2018-2-26 17:28:49
 *
 */
public interface BloggerService {
	// 根据名称获取博客
	Blog getByName(String name);
}
