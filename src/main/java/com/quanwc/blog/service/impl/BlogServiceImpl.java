package com.quanwc.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanwc.blog.entity.Blog;
import com.quanwc.blog.mapper.BlogMapper;
import com.quanwc.blog.service.BlogService;

/**
 * 博客对应接口的实现类
 * @author 全文超
 * 2018-2-26 17:31:27
 *
 */
@Service
public class BlogServiceImpl implements BlogService{

	@Autowired
	private BlogMapper blogMapper;
	
	/**
	 * 根据id查询博客
	 */
	@Override
	public Blog getBlogById(Integer id) {
		
		return null;
	}

	/**
	 * 查询所有博客
	 */
	@Override
	public List<Blog> listBlogs() {
		return blogMapper.listBlogs();
	}

	/**
	 * 新增博客
	 */
	@Override
	public int saveBlog(Blog blog) {
		if (blog == null) {
			return -1;
		}
		blog.setAuthor("admin");
		blog.setCreateTimestamp(System.currentTimeMillis());
		blog.setUpdateTimestamp(System.currentTimeMillis());
		System.out.println("html: " + blog.getHtml());
		return blogMapper.saveBlog(blog);
	}

	@Override
	public int removeBlog(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBlog(Blog blog) {
		// TODO Auto-generated method stub
		return 0;
	}

}
