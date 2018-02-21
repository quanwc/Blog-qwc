<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>活动观赏鱼-mix_pic</title>
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
	                <span class="child-nav-btn child-nav-btn-this">照片墙</span>
	                <span class="child-nav-btn"><a href="mix_vip">VIP视频解析</a></span>
	                <span class="child-nav-btn"><a href="mix_game">游戏墙</a></span>
                </div>
                <div class="mixed-main" id="pic"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.zuoqy.cn">zuoqy</a><span>Design By ZQY</span></p>
        <p><a href="http://www.miibeian.gov.cn" target="_blank">京ICP备17058348号-1</a></p>
    </footer>
    <!--侧边导航-->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="index.html"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="article.html"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="mixed_pic.html"><i class="fa fa-tags fa-fw"></i>&nbsp;杂七杂八</a>
        </li>
        <li class="layui-nav-item">
            <a href="timeline.html"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
        </li>
        <li class="layui-nav-item">
            <a href="about.html"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
        </li>
    </ul>
    
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
    <script src="js/mixed_pic.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>