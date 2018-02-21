<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>zuoqy博客文章专栏</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <!--Layui-->
    <link href="layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="css/detail.css" rel="stylesheet" />
</head>
<body>
    <!-- 导航 -->
	<#include "/include/nav_top.ftl">    

    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <!-- 这个一般才是真正的主体内容 -->
        <div class="blog-container">
            <div class="blog-main">
                <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                	<a href="index.html" title="网站首页">网站首页</a>
                	<a href="article.html" title="文章专栏">文章专栏</a>
                	<a><cite class="title"></cite></a>
           		</blockquote>
                <!--左边文章列表-->
                <div class="blog-main-left animated slideInLeft">
                	<!-- 文章内容（使用Kingeditor富文本编辑器发表的） -->
                    <div class="article-detail shadow">
                        <div class="article-detail-title title"><i class="layui-icon">&#xe609;</i>终于等来了,zuoqy博客v0.1!</a></div>
                        <div class="article-detail-info">
                        	<span>编辑时间：2017-09-12 17:47:48</span>
                            <span>作者：zuoqy·北京</span>
                            <span>浏览量：776</span>
                        </div class="article-detail-content">
                       	 从准备实施个人博客这个计划，到现在一个月不到，准备的东西很少，想着先运营起来再说，边测试边改版，吸取广大好友的意见，针对问题慢慢改进。有了这个发版也是博主，撸了一晚上，
						第一次配置服务器，有些地方总会遇到问题，索性，解决了，关于网页加载慢的问题，博主正在积极解决!请小主们稍安勿躁。
						<br><br>
						有想法有意见，欢迎点击有边关注我与我交流。时间有限，留言功能还未上线
						<br><br>
						目前这个v0.1版本，是纯前端组成，还没有涉及后端。中间有段时间一直在想如果数据太多了，用纯前端是不是我这布局会有问题，页面会不会变形，并且自己花了一天时间
						也搭了一个带后台的项目，后台是java实现的，使用了一个spring boot框架，感觉修改一些页面样式，太麻烦了，每次都得重启服务，想想第一版，应该不会有太多数
						据吧!就又用回到HBuilder，使用纯前端编辑项目。中间来来回回，自己纠结了好几次，不过最终还是拿这个版发布了。
						<br><br>
						<img src="images/art/001.jpg" width="680" height="300">
                        <div class="article-detail-sign">
                            <hr class="layui-bg-gray">
                            <p>出自：zuoqy博客</p>
                            <p>地址：<a href="http://www.zuoqy.cn" target="_blank">www.zuoqy.cn</a></p>
                            <p style="color: red;">如若转载请注明出处!</p>
                        </div>
                    </div>
               		<!-- 评论区域 -->
                    <div class="blog-module shadow" style="box-shadow: 0 1px 8px #a6a6a6;">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                            <legend>来说两句吧</legend>
                            <div class="layui-field-box">
                                <form class="layui-form blog-editor" action="">
                                    <div class="layui-form-item">
                                        <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button class="layui-btn" lay-submit="formLeaveMessage" lay-filter="formLeaveMessage">提交评论</button>
                                    </div>
                                </form>
                            </div>
                        </fieldset>
                        <div class="blog-module-title">最新评论</div>
                        <ul class="blog-comment"></ul>
                    </div>
                </div>
                <!--右边小栏目-->
                <div class="blog-main-right">
                	<!--右边悬浮 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
                	<!-- 分类导航 -->
                	<div class="article-category shadow">
                        <div class="article-category-title">分类导航</div>
                        <a href="javascript:go(1)">杂文随笔</a>
                        <a href="javascript:go(2)">JAVA基础</a>
                        <a href="javascript:go(3)">Web前端</a>
                        <a href="javascript:go(4)">My Sql</a>
                        <div class="clear"></div>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">相似文章</div>
                        <ul class="fa-ul blog-module-ul">
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">待开发！</a></li>
                        </ul>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">随便看看</div>
                        <ul class="fa-ul blog-module-ul">
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">待开发</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!-- 搜狗联盟 -->
	<center>
		<script type="text/javascript">var sogou_ad_id=922256;var sogou_ad_height=60;var sogou_ad_width=960;</script>
		<script type='text/javascript' src='http://images.sohu.com/cs/jsfile/js/c.js'></script>
	</center>
	
    <!-- 底部 -->
	<#include "/include/footer.ftl">

    <!--侧边导航-->
    

    <!--分享窗体-->
	<#include "/include/share.ftl">
    
    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <!-- layui.js -->
    <script src="layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="js/global.js"></script>
    <script src="js/canvas-particle.js"></script>
    <!-- 评论留言 -->
    <script src="js/message.js"></script>
</body>
</html>