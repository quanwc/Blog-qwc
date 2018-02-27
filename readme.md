

Java Blog
	开始有这个想法是在2017-12月底左右，是听林潇大佬给的建议。目的是为了学习，了解软件的完整开发流程。
	自己的动手能力一直很欠缺，那么这次是个锻炼的机会，不要错过。从简单做起，直到上线，目的在于增加知识学习，提高解决问题能力。
	
	startDate：2018-1-1日左右
	
	Blog-Lin可以运行起来：2018-1-15
	Blog-qwc可以运行起来：2018-1-16
	重构前台页面：2018-1-16 至 2018-1-
	
	endDate：
	
	前台、后台项目都在该项目中体现，eg：FrontController是前台的，AdminController是后台的。
	后台：Spring + SpringMVC + MyBatis + MySql + FreeMarker
	前台：LayUI  jQuery  //引入layui.js等第三方其他类库
	
	webapp：
		//backend目录下的是后台相关的外部文件，没带的是前台相关的外部文件
		backend：后台管理的所有外部文件，包括js、css等
		webapp目录下的其它目录，是前台的所有外部文件
	view:
		//带admin的是后台相关的页面，没带的是前台相关的页面
		admin：后台管理的页面
		include：加载前台、后台页面的公共部分，包括header、footer等部分
		view目录下的其它文件，是前台页面

	
	
##项目简介：

项目简介：
-- maven构建项目，管理jar包
-- bootstrap前端框架，完成页面的样式渲染
-- Editor.md作在线 Markdown 编辑器：https://pandao.github.io/editor.md/
   fckeditor：https://ckeditor.com/
-- freemarker作为模板引擎，用来生成输出html网页
-- spring用来管理对象，实现解耦。同时包括AOP
-- mysql数据库
-- dbcp连接池，连接数据库
-- MyBatis持久层框架，完成数据的CRUD操作
-- log4j作为日志打印输出
-- Git工具、GitHub网站



后期补充：
-- EhCache缓存框架，完成 对MyBatis查询数据的缓存
-- jedis作为缓存，提高效率。当然了项目中没必要使用，只是为了学习
-- shiro登录检查，权限控制。 与权限表的关联与区别？
-- 登录，注册的用户信息使用md5加密
-- druid连接池，相比dbcp更加轻便
-- Lucene/Shiro全文检索引擎
-- 收藏，分享功能。如果用户喜欢的话
-- 已读，喜欢，分享(微信，微博，QQ等)功能
-- AOP：事务的处理、异常处理、权限检查
-- 记录日志功能


问题：
-- 如何统计网站的访问量
-- 用户登录的令牌Token
-- 网站如何实现盈利



难点：
-- 环境的搭建，包括maven项目创建、dependency、项目结构、配置文件
-- 数据库设计，代码结构的整体搭建，方便日后添加新的模块功能
-- 页面css写起来比较耗时间
-- 什么事情都是有方法的，硬来是不行的，需多总结，多学习


联系方式： <br/>
	邮箱：quan_wc@163.com <br/>
	博客：http://www.cnblogs.com/quan-coder <br/>
	github：https://github.com/quanwc <br/>
	
