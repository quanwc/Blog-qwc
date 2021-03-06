<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>活动观赏鱼-about</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <!--Layui-->
    <link href="layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="css/about.css" rel="stylesheet" />
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
                <a><cite>关于本站</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="layui-tab layui-tab-brief shadow" lay-filter="tabAbout">
                    <ul class="layui-tab-title">
                        <li lay-id="1" class="layui-this">关于博客</li>
                        <li lay-id="2">关于作者</li>
                        <li lay-id="3" id="frinedlink">友情链接</li>
                        <li lay-id="4">留言墙</li>
                    </ul>
                    <div class="layui-tab-content">
                    	<div class="layui-tab-item layui-show">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img src="images/logo.png" alt="zuoqy博客" width="120px" height="120px"/>
                                </div>
                                <p class="aboutinfo-introduce">一个JAVA程序员的个人博客，记录博主学习和成长之路，分享生活点点滴滴</p>
                                <p class="aboutinfo-location"><i class="fa fa-link"></i>&nbsp;&nbsp;<a target="_blank" href="http://www.zuoqy.cn">www.zuoqy.cn</a></p>
                                <hr />
                                <div class="aboutinfo-contact">
                                    <a title="网站首页" href="home.html"><i class="fa fa-home fa-2x" style="font-size:2.5em;position:relative;top:3px"></i></a>
                                    <a title="文章专栏" href="article.html"><i class="fa fa-file-text fa-2x"></i></a>
                                    <a title="杂七杂八" href="mixed_pic.html"><i class="fa fa-paper-plane-o fa-2x"></i></a>
                                    <a title="点点滴滴" href="timeline.html"><i class="fa fa-hourglass-half fa-2x"></i></a>
                                </div>

                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>简介</legend>
                                    <div class="layui-field-box aboutinfo-abstract">
                                        <p style="text-align:center;">zuoqy博客是一个由JAVA开发的个人博客网站，诞生于2017年9月16日，迄今为止经历了一次大改，暂且称为zuoqy博客2.0。</p>
                                        <h1>第一个版本</h1>
                                        <p>诞生的版本，采用Java mvc作为后台框架，前端几乎自己手写，用了纯DIV布局！起初并没有注意美工，只打算完成基本的功能，故视觉体验是比较差的。</p>
                                        <h1>第二个版本</h1>
                                        <p>从公司的一个后台管理系统的前端发现了Layer弹窗插件,于是追根溯源,发现了Layui前端框架！Layui简洁的风格让我很喜欢,于是决定给我的网站改版!此次改版从里到外几乎全部更新。后台所有的设计,全部重新推翻重新,才有了现在这个版本。样式显然比之前高出很多</p>
                                        <h1>当前版本</h1>
                                        <p>发布了这个版本，首先得感谢Layui作者贤心,不管是文笔,还是代码水平,都让我很佩服,也感谢,个人在layui中提交了案例的小伙伴,才让我有了,开发这个版本的想法</p>
                                        <h1 style="text-align:center;">The End</h1>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--关于网站End-->
                        
                        <div class="layui-tab-item">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img src="images/user/0.jpg" alt="Absolutely" width="100px" height="100px"/>
                                </div>
                                <p class="aboutinfo-nickname">zuoqy</p>
                                <p class="aboutinfo-introduce">一枚90后程序员，Java开发工程师，主攻后端，略懂Web前端</p>
                                <p class="aboutinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;北京</p>
                                <hr />
                                <div class="aboutinfo-contact">
                                    <a target="_blank" title="QQ交流" href="http://shang.qq.com/email/stop/email_stop.html?qq=2065820975"><i class="fa fa-qq fa-2x"></i></a>
                                    <a target="_blank" title="给我写信" href="mailto:zuoqiyin@163.com"><i class="fa fa-envelope fa-2x"></i></a>
                                    <a target="_blank" title="新浪微博" href="http://weibo.com/zuoqiyin"><i class="fa fa-weibo fa-2x"></i></a>
                                    <a target="_blank" title="GitHub" href="https://github.com/zuoqiyin"><i class="fa fa-git fa-2x"></i></a>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>简介</legend>
                                    <div class="layui-field-box aboutinfo-abstract abstract-bloger">
                                        <p style="text-align:center;">zuoqy，zuoqy博客创始人,安徽铜陵人,目前是一个码农，从事Java开发。</p>
                                        <h1>个人信息</h1>
                                        <p>暂无</p>
                                        <h1>个人介绍</h1>
                                        <p>暂无</p>
                                        <h1>未来</h1>
                                        <p>还没想好</p>
                                        <h1 style="text-align:center;">The End</h1>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--关于作者End-->
                    	<div class="layui-tab-item">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img src="images/handshake.png" alt="友情链接" />
                                </div>
                                <p class="aboutinfo-nickname">友情链接</p>
                                <p class="aboutinfo-introduce">Name：zuoqy博客&nbsp;&nbsp;&nbsp;&nbsp;Site：www.zuoqy.cn</p>
                                <p class="aboutinfo-location">
                                    <i class="fa fa-close"></i>经常宕机&nbsp;
                                    <i class="fa fa-close"></i>不合法规&nbsp;
                                    <i class="fa fa-close"></i>插边球站&nbsp;
                                    <i class="fa fa-close"></i>红标报毒&nbsp;
                                    <i class="fa fa-check"></i>原创优先&nbsp;
                                    <i class="fa fa-check"></i>技术优先
                                </p>
                                <hr />
                                <div class="aboutinfo-contact">
                                    <p style="font-size:2em;">互换友链，携手并进！</p>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>Friend Link</legend>
                                    <div class="layui-field-box">
                                        <ul class="friendlink">
                                            <li>
                                                <a target="_blank" href="http://www.layui.com/" title="Layui" class="friendlink-item">
                                                    <p class="friendlink-item-pic"><img src="http://www.layui.com/favicon.ico" alt="Layui" /></p>
                                                    <p class="friendlink-item-title">Layui</p>
                                                    <p class="friendlink-item-domain">layui.com</p>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--友情链接End-->
                        
                    	<div class="layui-tab-item">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img src="images/messagewall.png" alt="留言墙" />
                                </div>
                                <p class="aboutinfo-nickname">留言墙</p>
                                <p class="aboutinfo-introduce">本页面可留言、吐槽、提问。欢迎灌水，杜绝广告！</p>
                                <p class="aboutinfo-location">
                                    <i class="fa fa-clock-o"></i>&nbsp;<span id="time"></span>
                                </p>
                                <hr />
                                <div class="aboutinfo-contact">
                                    <p style="font-size:2em;">沟通交流，拉近你我！</p>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>Leave a message</legend>
                                    <div class="layui-field-box">
                                        <div class="leavemessage" style="text-align:initial">
                                            <form class="layui-form">
                                                <div class="layui-form-item">
                                                    <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea"></textarea>
                                                </div>
                                                <div class="layui-form-item">
                                                    <button class="layui-btn" lay-submit="formLeaveMessage" lay-filter="formLeaveMessage">提交留言</button>
                                                </div>
                                            </form>
                                            <ul class="blog-comment"></ul>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--留言墙End-->
                        
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
    <script src="js/about.js"></script>
    <!-- 评论留言 -->
    <script src="js/message.js"></script>
    <!-- 音乐播放器 -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/player.js"></script>
</body>
</html>