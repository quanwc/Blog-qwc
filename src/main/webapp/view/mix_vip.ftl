<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>活动观赏鱼-mix_vip</title>
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
	                <span class="child-nav-btn child-nav-btn-this">VIP视频解析</span>
	                <span class="child-nav-btn"><a href="mix_game">游戏墙</a></span>
                </div>
                <div class="mixed-main">
                	<p class="vip vip-title">全网VIP视频在线解析服务:</p>
                	<p class="vip vip-explain">请粘贴你想看的视频地址或名称到下面的输入框内并点击解析按钮： </p>
                	<p class="vip-input">
                		<input type="text" id="src" placeholder="例:http://www.iqiyi.com/v_19rr7h32t0.html" autocomplete="off" class="layui-input">
                		<button class="layui-btn" id="submit">解析</button>
                	</p>
                	<p class="vip-video">
                		
                	</p>
                	<p>温馨提示：如果显示不能播放或时长为几分钟，长时间无响应，请按F5多刷新几次</p>
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
    <script src="js/mixed_vip.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>