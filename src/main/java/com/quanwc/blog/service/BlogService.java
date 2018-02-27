package com.quanwc.blog.service;

import java.util.List;

import com.quanwc.blog.entity.Blog;

/**
 * 博客对应的接口：
 * 	注：
 * 		声明service接口，自己写serviceImpl实现类，只是为了面向接口编程，方便我们更换具体的serviceImpl实现类；
 * 		当然了我们也可以直接就在controller中注入ServiceImpl类型的对象，这样可以直观看到具体是那个实现类
 * @author 全文超
 * 2018-2-26 17:09:52
 *
 */
public interface BlogService {
	
	Blog getBlogById(Integer id);
	
	List<Blog> listBlogs();
	
	int saveBlog(Blog blog);
	
	int removeBlog(Integer id);
	
	int updateBlog(Blog blog);
	
}
