package com.quanwc.blog.web.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quanwc.blog.entity.Blog;
import com.quanwc.blog.entity.Tag;
import com.quanwc.blog.service.BlogService;
import com.quanwc.blog.service.TagService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private BlogService blogService;
	@Autowired
	private TagService tagService;
	
	/**
	 * layui页面测试
	 * @return
	 */
	@RequestMapping("/layui")
	public String layuiFtl() {
		System.out.println("layui");
		return "admin/layui";
	}
	
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
	

//博客的controller处理	
	/**
	 * 博客列表
	 * @param map 
	 * @return
	 */
	@RequestMapping(path = {"/blogList"}, method = RequestMethod.GET)
	public String listBlogs(ModelMap map) {
		List<Blog> blogList = blogService.listBlogs();
		
		map.put("blogList", blogList);
		return "admin/blog_list";
	}
	
	/**
	 * @Description: 跳转到博客添加页面
	 * @date 2018-2-26 15:33:47
	 */
	@RequestMapping(path = { "/blogAddViewFtl" }, method = RequestMethod.GET)
	public String blogAddViewFTL() {
		return "/admin/blog_add";
	}
	
	/**
	 * 新增博客
	 * @return
	 */
	@RequestMapping(path = {"/blogAdd"}, method = RequestMethod.POST)
	public String saveBlog(Blog blog) {
		blogService.saveBlog(blog);
		return "redirect:/admin/blogList";
	}
	
	/**
	 * 批量删除博客
	 * @param ids
	 * @return
	 */
	@RequestMapping(path = {"/blogBatchRemove"}, method = RequestMethod.POST)
	public String removeBlogBatch(HttpServletRequest request, String idsStr) { //ids："9,10,11"
//
//		idsStr = URLDecoder.decode(idsStr);
//		idsStr = idsStr.substring(1);
//		idsStr = idsStr.substring(0, idsStr.length()-1);
//		String [] idsStrArr = idsStr.split(",");
//		
//		Integer[] ids = new Integer[idsStrArr.length];
//		for (int i=0; i<idsStrArr.length; ++i) {
//			String idStr = idsStrArr[i];
//			ids[i] = Integer.valueOf(idStr);
//		}

		/*
		 * MyBatis：parameterType="java.util.List"
		 * 在java中可以传入一个ArrayList，当然也可以传入一个数组
		 */
//		blogService.removeBlogBatch(null); 
		return "redirect:/admin/blogList";
	}
	
	/**
	 * 跳转至博客更新页面
	 * @param id
	 * @return
	 */
	@RequestMapping(path={"/blogUpdateViewFtl"}, method = RequestMethod.GET)
	public String blogUpdateViewMethod(HttpServletRequest request, ModelMap model) {
		String id = request.getParameter("id");
		Blog blog = blogService.getBlogById(Integer.parseInt(id));
		model.addAttribute("blog", blog);
		return "/admin/blog_update";
	}
	
	/**
	 * 更新博客
	 * @param blog
	 * @return
	 */
	@RequestMapping(path={"/blogUpdate"}, method = RequestMethod.PUT)
	public String updateBlog(Blog blog) {
		System.out.println("update blog: " + blog);
		blogService.updateBlog(blog);
		return "redirect:/admin/blogList";
	}

	
	
	
	
	
	
//用户的controller处理	
	/**
	 * 用户列表
	 * @return
	 */
	@RequestMapping(path={"/userList"}, method=RequestMethod.GET)
	public String userList() {
		System.out.println("admin userList");
		return "admin/user_list";
	}
	
	
	
	
	
	
//标签的controller处理	
	/**
	 * 显示标签列表
	 * @return
	 */
	@RequestMapping("/tagList")
	public Model listTags(Model model) {
		List<Tag> tagList = tagService.listTags();
		model.addAttribute("tagList", tagList);
		return model;
	}
	
	/**
	 * 跳转至标签新增页面
	 * @return
	 */
	@RequestMapping(path={"/saveTagViewFtl"}, method = RequestMethod.GET)
	public String saveTagViewFtl() {
		return "tag_add";
	}
	
	/**
	 * 新增标签
	 * @param tag
	 * @return
	 */
	
	public String saveTag(Tag tag) {
		if (tag == null) {
			
		}
		
		return "";
	}
	
	/**
	 * 删除标签
	 * @param id
	 * @return
	 */
	public String deleteTag(Integer id) {
		
		return "";
	}
	
	/**
	 * 修改标签
	 * @param id
	 * @return
	 */
	public String updateTag(Integer id) {
		
		return "";
	}
	
}