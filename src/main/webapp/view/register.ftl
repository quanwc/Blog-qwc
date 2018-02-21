<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>zuoqy博客-注册</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <!--Layui-->
    <link href="layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>

    <!-- 导航 -->
 	<#include "/include/nav_top">

    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="index.html" title="网站首页">网站首页</a>
                <a><cite>登陆注册</cite></a>
            </blockquote>
            <div class="blog-main">
           		<div class="layui-tab layui-tab-brief shadow">
					<ul class="layui-tab-title">
					    <li>登陆</li>
					    <li class="layui-this">注册</li>
				    </ul>
					<div class="layui-tab-content">
						<!-- 登陆 -->
						<div class="layui-tab-item">
					    	<form class="layui-form layui-form-pane" method="post">
					    		<div class="layui-form-item">
								    <label class="layui-form-label">邮箱</label>
							    	<div class="layui-input-inline">
							        	<input type="text" name="email" required  lay-verify="email" autocomplete="off" class="layui-input">
							        </div>
							    </div>
							    <div class="layui-form-item">
								    <label class="layui-form-label">密码框</label>
								    <div class="layui-input-inline">
								      <input type="password" name="pwd" required lay-verify="required" autocomplete="off" class="layui-input">
								    </div>
							  </div>
							  	<div class="layui-form-item">
								    <label class="layui-form-label">人类验证</label>
								    <div class="layui-input-inline">
								      <input type="text" name="verify" required lay-verify="required" autocomplete="off" placeholder="请回答后面问题" class="layui-input">
								    </div>
								    <div class="layui-form-mid">
								    	<span style="color:#c00" class="verift-text"></span>
								    </div>
							    </div>
						        <div class="layui-form-item">
								    <button class="layui-btn" lay-submit lay-filter="loginForm">立即登陆</button>
								    <span style="padding-left: 20px">
								    	<a href="javascript:forgetPwd()">忘记密码?</a>
								    </span>
							    </div>
							</form>
				    	</div>
		    			<div class="layui-tab-item layui-show">
		    				<form class="layui-form layui-form-pane" method="post">
					    		<div class="layui-form-item">
								    <label class="layui-form-label">邮箱</label>
							    	<div class="layui-input-inline">
							        	<input type="email" name="email" required  lay-verify="email" autocomplete="off" class="layui-input">
							        </div>
							        <div class="layui-form-mid layui-word-aux">将会成为您唯一的登陆名</div>
							    </div>
							    <div class="layui-form-item">
								    <label class="layui-form-label">昵称</label>
								    <div class="layui-input-inline">
								      <input type="text" name="name" required lay-verify="required" autocomplete="off" class="layui-input">
								    </div>
							   </div>
							    <div class="layui-form-item">
								    <label class="layui-form-label">密码</label>
								    <div class="layui-input-inline">
								      <input type="password" name="pwd" required lay-verify="required" autocomplete="off" class="layui-input">
								    </div>
								    <div class="layui-form-mid layui-word-aux">6到18个字符</div>
							    </div>
							    <div class="layui-form-item">
								    <label class="layui-form-label">确认密码</label>
								    <div class="layui-input-inline">
								      <input type="password" name="repwd" required lay-verify="required" autocomplete="off" class="layui-input">
								    </div>
							    </div>
							    <div class="layui-form-item">
								    <label class="layui-form-label">人类验证</label>
								    <div class="layui-input-inline">
								      <input type="text" name="verify" required lay-verify="required" autocomplete="off" placeholder="请回答后面问题" class="layui-input">
								    </div>
								    <div class="layui-form-mid">
								    	<span style="color:#c00" class="verift-text"></span>
								    </div>
							    </div>
						        <div class="layui-form-item">
								    <button class="layui-btn" lay-submit lay-filter="regForm">立即注册</button>
							    </div>
							</form>
		    			</div>
					</div>
				</div>      
            </div>
        </div>
        
    </div>
    <!-- 底部 -->
	 <#include "/include/footer">

    <!--侧边导航-->


    <!--分享窗体-->
     <#include "/include/share">
    
    <!-- 音乐播放器 -->
     <#include "/include/music">


    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <!-- layui.js -->
    <script src="layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="js/global.js"></script>
    <script src="js/canvas-particle.js"></script>
    <!-- 本页脚本 -->
    <script src="js/login.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>