package com.quanwc.blog.web.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import com.quanwc.blog.entity.User;


/**
 * 前端页面控制器：
 * 		博客系统的前台管理，用于给用户展示页面信息。用于显示博客信息，archives、标签tag、用户登录、注册、评论等。
 * @author 全文超
 * 2018-1-16 10:18:00
 *
 */
@Controller
@RequestMapping("")
public class FrontController {
	

	/**
	 * 前台页面：index.ftl
	 * @return
	 */
	@RequestMapping("/index")
	public String index() {
		System.out.println("用户可以看到的首页index");
		
		// 获取spring容器对象
//		WebApplicationContext context = SpringContext.getBean(XmlWebApplicationContext.class);
//		System.out.println(context);	
//		WebApplicationContext context2 = SpringContext.getBean(WebApplicationContext.class);
//		System.out.println(context2);
		
		WebApplicationContext wac = ContextLoader.getCurrentWebApplicationContext(); 
//		WebApplicationContext obj = wac.getBean(WebApplicationContext.class);
//		WebApplicationContext obj = wac.getBean(XmlWebApplicationContext.class);
//		WebApplicationContext obj = (WebApplicationContext) wac.getBeansOfType(WebApplicationContext.class);
//		System.out.println(obj);
		
		System.out.println(ApplicationContext.class);
		
		return "index";
	}
	
	/**
	 * 前台页面：article.ftl
	 * @param root
	 * @return
	 */
	@RequestMapping("/article")
	public String article(ModelMap root) {
		System.out.println("用户可以看到的页面article");
		return "article";
	}
	
	/**
	 * 前台页面：mix_pic.ftl
	 * @return
	 */
	@RequestMapping("/mix_pic")
	public String mix_pic() {
		System.out.println("mix_pic");
		return "mix_pic";
	}
	
	/**
	 * 前台页面：mix_game.ftl
	 * @return
	 */
	@RequestMapping("/mix_game")
	public String mix_game() {
		System.out.println("mix_game");
		return "mix_game";
	}
	
	/**
	 * 前台页面：mix_vip.ftl
	 * @return
	 */
	@RequestMapping("/mix_vip")
	public String mix_vip() {
		System.out.println("mix_vip");
		return "mix_vip";
	}
	
	/**
	 * 前台页面：timeline.ftl
	 * @return
	 */
	@RequestMapping("/timeline")
	public String timeline() {
		System.out.println("timeline");
		return "timeline";
	}
	
	/**
	 * 前台页面：about.ftl
	 * @return
	 */
	@RequestMapping("/about")
	public String about() {
		System.out.println("about");
		return "about";
	}
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	@RequestMapping("/login")
	public String login(User user){
		return "";
	}
	
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	@RequestMapping("/register")
	public String register(User user){
		return "";
	}
	
	/**
	 * 根据博客id获取博客信息
	 * @param modelMap
	 * @param id
	 * @return
	 */
	@RequestMapping(path="/blogDetail/{id}")
	@ResponseBody
	public String blogDetail(ModelMap modelMap, @PathVariable Integer id) {
		return null;
	}
	
}
