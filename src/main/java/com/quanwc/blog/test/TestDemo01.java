package com.quanwc.blog.test;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

/**
 * @Deprecated注解：
 * 		表示对应的方法，不建议使用，当调用者调用时候，该方法会出现一个删除线
 * @author quanwenchao
 * 
 *
 */
public class TestDemo01 {
	@Deprecated 
	public static void say(){
		System.out.println("hello");
	}
	
	// spring配置文件的 测试
	public static void testSpring() {
		String conf = "applicationContext.xml";
		ApplicationContext ctx = new ClassPathXmlApplicationContext(conf);
		System.out.println("容器ctx: " + ctx);
		
		// 获取FreeMarkerViewResolver对象
		FreeMarkerViewResolver freeMakerViewResolver = ctx.getBean("freeMarkerViewResolver", FreeMarkerViewResolver.class);
		System.out.println("freeMakerViewResolver: " + freeMakerViewResolver);
		
		// 获取ContentNegotiatingViewResolver对象
		ContentNegotiatingViewResolver contentViewResolver = ctx.getBean(ContentNegotiatingViewResolver.class);
		System.out.println("contentViewResolver: " + contentViewResolver);  //可以获取到ContentNegotiatingViewResolver这个bean
		
		// 获取InternalResourceViewResolver对象
		InternalResourceViewResolver viewResolver = ctx.getBean("viewResolver", InternalResourceViewResolver.class);
		System.out.println("viewResolver: " + viewResolver);   //报错，无法获取到InternalResourceViewResolver这个bean
		
//		System.out.println(ctx.getBean(ApplicationContext.class));
//		System.out.println(ctx.getBean(BeanFactory.class));
	}
	
	public static void main(String[] args) {
//		say();
		testSpring();
	}
	
}
