package com.quanwc.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quanwc.blog.entity.Blog;

/**
 * 博客对应的Mapper接口
 * @author 全文超
 * 2018-2-26 17:38:32
 *
 */
@Repository
public interface BlogMapper {
	
	// 根据id查询博客
	Blog getBlogById(Integer id);
	
	// 查询所有博客
	List<Blog> listBlogs();
	
	// 新增博客
	int saveBlog(Blog blog);
	
	// 批量删除博客
	int removeBlogBatch(@Param("arrIds2") Integer[] ids);
	
	// 修改博客
	int updateBlog(@Param("blog") Blog blog);
}
