<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="backend/lib/html5.js"></script>
<script type="text/javascript" src="backend/lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="backend/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="backend/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="backend/css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="backend/css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="backend/css/style.css" />

<!-- markdown -->
<link rel="stylesheet" href="backend/editormd/editormd.css">
<link rel="stylesheet" href="backend/editormd/style.css" />
<link rel="stylesheet" href="backend/editormd/markdown.css" />

<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>新增博客 - 活动观赏鱼</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
	
			<!-- 右侧主体显示区 -->
			<div class="col-sm-6 col-md-12 main">
				<!-- 博客文章div -->
				<div id="form-div">
					<label class="text-warning">工具</label>
					<select id="editormd-theme-select">
	                    <option selected="selected" value="">select Editor.md themes</option>
	                </select>
	                <label class="text-warning">编辑器</label>
	                <select id="editor-area-theme-select">
	                    <option selected="selected" value="">select editor area themes</option>
	                </select>
	                <label class="text-warning">预览</label>
	                <select id="preview-area-theme-select">
	                    <option selected="selected" value="">select preview area themes</option>
	                </select>
					<!-- 表单提交区 -->
					<form role="form" class="form-inline" name="blogForm" id="blogForm" method="POST">
						<!-- 博客标题 -->
						<div class="form-group">
							<label for="title" class="text-warning">标题</label>
							<input type="text" class="form-control" name="title" placeholder="请输入博客标题" />
						</div>
						<!-- 隐藏的md文本 -->
						<input type="hidden" name="md" id="md"/>
						<!-- 隐藏的md生成的html文本 -->
	                    <input type="hidden" name="html" id="html"/>
						<!-- 提交按钮 -->
	                    <div class="form-group">
	                        <label for="add-blog-btn" class="text-warning">提交</label>
	                        <input type="button" class="form-control" id="submitBtn" value="save"/>
	                    </div>
					</form>
	                <!-- markdown书写位置 -->
					<div id="editormd" class="row">
						<textarea style="display: none;"></textarea>
					</div>
				</div><!-- 博客文章div-结束 -->
			</div>
			<!-- 右侧主体显示区-结束 -->
	
		</div>
	</div>



<!-- markdown -->
<!-- 引入jquery：editor.js是基于jQuery的 -->
<script type="text/javascript" src="backend/js/jquery.min.js"></script>
<script src="backend/editormd/editormd.js"></script>

<script type="text/javascript">
    var editor;
    
    $(function() {
    
    	// 页面加载完成后，会执行该方法
    	// alert(1);
    	
    	// markdown样式修改方法
        function themeSelect(id, themes, lsKey, callback)
        {
        	// alert(2);
        	
            var select = $("#" + id);
            
            for (var i = 0, len = themes.length; i < len; i ++)
            {                    
                var theme    = themes[i];
                var selected = (localStorage[lsKey] == theme) ? " selected=\"selected\"" : "";
                
                select.append("<option value=\"" + theme + "\"" + selected + ">" + theme + "</option>");
            }
            
            select.bind("change", function(){
                var theme = $(this).val();
                
                if (theme === "")
                {
                    alert("theme == \"\"");
                    return false;
                }
                
                console.log("lsKey =>", lsKey, theme);
                
                localStorage[lsKey] = theme;
                callback(select, theme);
            }); 
            
            return select;
        }

    	// 加载markdown编辑器
        editor = editormd("editormd", {
            width: "100%",
            height: 600,
            path : 'backend/lib/',           // editormd.js文件中：覆盖设置editormd.defaults的path属性值
            theme : "default",					//工具栏样式
            previewTheme : "default",			//生成markdown文本样式
            editorTheme : "default",	//markdown编写区样式
            //markdown : md, 			//预加载markdown文本
            codeFold : true,
            //syncScrolling : false,
            saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
            searchReplace : true,
            //watch : false,                // 关闭实时预览
            htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启    
            //toolbar  : false,             //关闭工具栏
            //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启
            emoji : true,
            taskList : true,
            tocm            : true,         // Using [TOCM]
            tex : true,                   // 开启科学公式TeX语言支持，默认关闭
            flowChart : true,             // 开启流程图支持，默认关闭
            sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
            //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
            //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
            //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
            //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
            //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "./php/upload.php",	//图片提交地址
            onload : function() {
                 console.log('onload1', this);
            }
        });
        // 设置默认样式
       themeSelect("editormd-theme-select", editormd.themes, "theme", function($this, theme) {
           editor.setTheme(theme);
       });
       
       themeSelect("editor-area-theme-select", editormd.editorThemes, "editorTheme", function($this, theme) {
           editor.setCodeMirrorTheme(theme); 
       });
       
       themeSelect("preview-area-theme-select", editormd.previewThemes, "previewTheme", function($this, theme) {
           editor.setPreviewTheme(theme);
       });  	
        	
       // 表单提交方法
       $("#submitBtn").click(function(){
       		debugger;
			// 把markdown生成的HTML存入form表单隐藏input中
			$("#html").val(editor.getHTML());
			// 把编写的markdown文本放入form表单
			$("#md").val(editor.getMarkdown());
			// 获取markdown文本和生成HTML
			alert(editor.getHTML());
			alert(editor.getMarkdown());
			$("#blogForm").attr('action','blogAdd').submit();
		})
    });
</script>

</body>
</html>