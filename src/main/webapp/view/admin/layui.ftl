<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>开始使用layui</title>
  <link rel="stylesheet" href="backend/css/layui.css">
  <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.js"></script>
  <script src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
</head>
<body>

	<ul class="layui-nav" lay-filter="">
	  <li class="layui-nav-item"><a href="">最新活动</a></li>
	  <li id="product" class="layui-nav-item layui-this"><a href="">产品</a></li>
	  <li class="layui-nav-item"><a href="">大数据</a></li>
	  <li class="layui-nav-item">
	    <a href="javascript:;">解决方案</a>
	    <dl class="layui-nav-child"> <!-- 二级菜单 -->
	      <dd><a href="">移动模块</a></dd>
	      <dd><a href="">后台模版</a></dd>
	      <dd><a href="">电商平台</a></dd>
	    </dl>
	  </li>
	  <li class="layui-nav-item"><a href="">社区</a></li>
	</ul> 


  
<script src="backend/js/blog.js"></script>
</body>
</html>