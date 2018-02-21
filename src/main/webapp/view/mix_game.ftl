<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>活动观赏鱼-mix_game</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <!--Layui-->
    <link href="layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="css/mixed.css" rel="stylesheet" />
</head>
<body>

    <!-- 导航 -->
	<#include "/include/nav_top.ftl">

    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <!-- 这个一般才是真正的主体内容 -->
        <div class="blog-container">
        	<blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="index.html" title="网站首页">网站首页</a>
                <a><cite>杂七杂八</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="child-nav shadow">
	                <span class="child-nav-btn"><a href="mix_pic">照片墙</a></span>
	                <span class="child-nav-btn"><a href="mix_vip">VIP视频解析</a></span>
	                <span class="child-nav-btn child-nav-btn-this">游戏墙</span>
                </div>
                <div class="mixed-main">
                	<div class="mixed shadow">
	                    <div class="mixed-cover">
	                        <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
	                            <img src="images/game/game_000.jpg" alt="游戏正在制作" />
	                        </a>
	                    </div>
	                    <h1 class="mixed-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">游戏制作</a></h1>
	                    <p class="mixed-abstract">游戏正在开发中,开发完成会第一时间奉上。</p>
	                    <div class="mixed-info">
	                        <span class="category"><a><i class="fa fa-tags fa-fw"></i>&nbsp;益智</a></span>
	                        <span class="author"><i class="fa fa-user fa-fw"></i>zuoqy</span>
	                        <div class="clear"></div>
	                    </div>
	                    <div class="mixed-footer">
	                        <a class="layui-btn layui-btn-small layui-btn-primary layui-btn-disabled" href="javascript:"><i class="fa fa-eye fa-fw"></i>演示</a>
	                        <a class="layui-btn layui-btn-small layui-btn-primary layui-btn-disabled" href="javascript:"><i class="fa fa-download fa-fw"></i>下载</a>
	                    </div>
	                </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!-- 底部 -->
	<#include "/include/footer.ftl">

    <!--侧边导航-->
   
   	
    <!--分享窗体-->
	<#include "/include/share.ftl">
    <!-- 音乐播放器 -->
	<#include "/include/music.ftl">

    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <!-- layui.js -->
    <script src="layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="js/global.js"></script>
    <script src="js/canvas-particle.js"></script>
    <!-- 本页脚本 -->
    <script src="js/mixed.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>