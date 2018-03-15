<!DOCTYPE HTML>
<html>
<head>
	<#include "/include/admin_script_head.ftl">
</head>

<body>

<!-- 加载头部导航栏 -->
<#include "/include/admin_header.ftl">

<!-- 加载左侧导航树 -->
<#include "/include/admin_nav_left.ftl">

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span>
		博客管理
		<span class="c-gray en">&gt;</span>
		博客列表
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="text-c">
				日期范围：
				<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
				-
				<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;">
				<input type="text" name="" id="" placeholder=" 博客名称" style="width:250px" class="input-text">
				<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜博客</button>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
				<a id="batchDelBtn" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
				<a class="btn btn-primary radius" data-title="添加博客" href="${ctx}/admin/blogAddViewFtl"><i class="Hui-iconfont">&#xe600;</i> 添加博客</a>
				</span>
				<span class="r">共有数据：<strong>54</strong> 条</span>   
			</div>
			
			<div class="mt-20">
				<#if blogList??>
					<table id="blogListTable" class="table table-border table-bordered table-bg table-hover table-sort">
						<thead>
							<tr class="text-c">
								<th width="25"></th>
								<th width="80">ID</th>
								<th width="200">标题</th>
								<th width="80">作者</th>
								<th width="120">md</th>
								<th width="75">html</th>
								<th width="60">创建时间</th>
								<th width="120">修改时间</th>
								<th width="120">修改内容</th>
							</tr>
						</thead>
						
						<tbody>
						<#list blogList as blog>
							<tr class="text-c">
								<td><input onclick="tbodyAddCheckedOpt(this)" type="checkbox" value="" name=""></td>
								<td>${blog.id}</td>
								<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">${blog.title}</u></td>
								<td>${blog.author}</td>
								<td>${blog.md}</td>
								<td>${blog.html}</td>
								<td>${blog.createTimestamp?string('dd.MM.yyyy HH:mm:ss')}</td>
								<td>${blog.updateTimestamp?datetime}</td>
								<!--<td><a href="${ctx}/admin/blogUpdateViewFtl?id=${blog.id}">修改</a></td>-->
								<!--<td><a href="${ctx}/admin/blogUpdateViewFtl/${blog.id}">修改</a></td>-->
								<td><a style="color:#C71585" onclick="blogUpdateViewFtl(${blog.id})">修改</a></td>
							</tr>
						</#list>
						</tbody>
					</table>
				<#else>
					<h2>Blogs not found</h2>
	          	</#if>
			</div>
			
			
		</article>
	</div>
</section>

<script type="text/javascript" src="backend/js/jquery.min.js"></script>
<!--
	在线引用cdn加速网站的jquery.json.min.js
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery-json/2.5.1/jquery.json.min.js"></script>
-->	
<script type="text/javascript" src="backend/js/jquery.json.min.js"></script>
<script type="text/javascript" src="backend/js/layer.js"></script>
<script type="text/javascript" src="backend/js/H-ui.js"></script>
<script type="text/javascript" src="backend/js/H-ui.admin.page.js"></script>

<!-- 引用blog.js -->
<script type="text/javascript" src="backend/js/blog.js"></script>



</html>