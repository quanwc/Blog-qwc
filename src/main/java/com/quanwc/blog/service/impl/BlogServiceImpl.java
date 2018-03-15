package com.quanwc.blog.service.impl;

import java.util.Date;
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
		if (id == null) {
			return null;
		}
		return blogMapper.getBlogById(id);
	}

	/**
	 * Mybatis分页插件 - PageHelper
	 * http://blog.csdn.net/qq_26790807/article/details/62429290
	 * https://www.cnblogs.com/shanheyongmu/p/5864047.html
	 * http://blog.csdn.net/qq_32534855/article/details/60755437
	 * 查询所有博客
	 */
	@Override
	public List<Blog> listBlogs() {
		
		//分页处理，显示第1页的3条数据
//		PageHelper.startPage(1, 3);
		List<Blog> list = blogMapper.listBlogs();
//		PageInfo<Blog> pageInfo = new PageInfo<Blog>(list);
//		System.out.println(pageInfo);
		return  list;
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
		Date date = new Date();
		blog.setCreateTimestamp(date);
		blog.setUpdateTimestamp(date);
		return blogMapper.saveBlog(blog);
	}

	/**
	 * 批量删除博客
	 */
	@Override
	public int removeBlogBatch(Integer[] ids) {
		if (ids == null || ids.length ==0) {
			return -1;
		}
		return blogMapper.removeBlogBatch(ids);
	}

	/**
	 * 修改博客：
	 * 	注：当前只可以修改博客内容，标题title等无法修改
	 */
	@Override
	public int updateBlog(Blog blog) {
		if (blog == null) {
			return -1;
		}
		Date date = new Date();
		blog.setUpdateTimestamp(date);
		return blogMapper.updateBlog(blog);
	}

}
