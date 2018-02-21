package com.quanwc.blog.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 博主控制器：
 * 		博客系统的后台管理，用于发布文章、发布生活分享等
 * @author 全文超
 * 2018-1-16 09:30:23
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	/**
	 * 后台管理的首页
	 * @return
	 */
	@RequestMapping("/homeView")
	public String index() {
		System.out.println("admin index");
		return "admin/home";
	}
	
	/**
	 * 新增博客
	 * @return
	 */
	@RequestMapping("/blogAdd")
	public String add() {
		System.out.println("admin blogAdd");
		return "admin/blog_add";
	}
	
	/**
	 * 博客列表
	 * @return
	 */
	@RequestMapping("/blogList")
	public String blogList() {
		System.out.println("admin blogList");
		return "admin/blog_list";
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
