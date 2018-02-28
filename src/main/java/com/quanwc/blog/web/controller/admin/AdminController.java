package com.quanwc.blog.web.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.quanwc.blog.entity.Blog;
import com.quanwc.blog.service.BlogService;

/**
 * 博主控制器：
 * 		博客系统的后台管理，用于发布文章、发布生活分享等
 * @author 全文超
 * 2018-1-16 09:30:23
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private BlogService blogService;
	
	/**
	 * 后台管理的首页
	 * @return
	 */
	@RequestMapping("/homeView")
	public String index(HttpServletRequest request) {
		String path = request.getContextPath();
		System.out.println("path=" + path);
		return "admin/home";
	}
	
	/**
	 * 根据id查询博客
	 * @param id
	 * @return
	 */
	public String getBlogById(Integer id) {
		Blog blog = blogService.getBlogById(id);
		System.out.println(blog);
		return null;
	}
	
	/**
	 * @Description: 跳转到博客添加页面
	 * @date 2018-2-26 15:33:47
	 */
	@RequestMapping(path = { "/blogAddView" }, method = RequestMethod.GET)
	public String blogAddView() {
		return "/admin/blog_add";
	}
	
	/**
	 * 博客列表
	 * @param map 
	 * @return
	 */
	@RequestMapping(path = {"/blogList"}, method = RequestMethod.GET)
	public String blogList(ModelMap map) {
		List<Blog> blogList = blogService.listBlogs();
		System.out.println(blogList.toString());
		map.put("blogList", blogList);
		return "admin/blog_list";
	}
	
	/**
	 * 新增博客
	 * @return
	 */
	@RequestMapping(path = {"/blogAdd"}, method = RequestMethod.POST)
	public String saveBlog(Blog blog) {
		blogService.saveBlog(blog);
		return "redirect:/admin/homeView";
	}
	
	/**
	 * 用户列表
	 * @return
	 */
	@RequestMapping("/userList")
	public String userList() {
		System.out.println("admin userList");
		return "admin/user_list";
	}
	
}
