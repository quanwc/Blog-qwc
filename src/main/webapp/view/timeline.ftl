<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>活动观赏鱼-timeline</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <!--Layui-->
    <link href="layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="css/timeline.css" rel="stylesheet" />
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
                <a><cite>点点滴滴</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="child-nav shadow">
	                <span class="child-nav-btn child-nav-btn-this">时光轴</span>
	                <!-- <span class="child-nav-btn" onclick="location.href='#'">待开发</span> -->
                </div>
                <div class="timeline-box shadow">
                    <div class="timeline-main">
                        <h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录生活点点滴滴</span></h1>
                        <div class="timeline-line"></div>
                        <div class="timeline-data"></div>
                        <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
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
    <script src="js/timeline.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>