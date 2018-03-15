$(function(){
	
	/*批量删除博客*/
	$("#batchDelBtn").on('click',function(){
		
		var ids = [];
		
		// 遍历tr
		$("#blogListTable").find("tbody tr").each(function() {
			var tr = $(this); // 获取当前行
			
			var checked = tr.find("td:eq(0) input").first().attr("checked");
			if (checked=="checked") {				
				var id = tr.find("td").eq(1).text();
				ids.push(id);
			}
		});
		
		layer.confirm('确定删除吗?', {icon: 3, title:'提示'}, function(index){
			
			alert(JSON.stringify(ids));
			
			$.ajax({
			   url: "/Blog-qwc/admin/blogBatchRemove",
			   type: "POST",
			   data: {
				   "ids" : JSON.stringify(encodeURI(ids))
//				   "ids" : $.toJSON(ids)
			   },			   
//			   data: $.toJSON(ids),			   
			   dataType: "json",
			   success: function(msg){
			     alert( "Data Saved: " + msg );
			     layer.close();
			   }
			});
			
		});
		
	
		return false;
	});
	
});

/**
 * 点击blogListTable的tbody下的checkbox，添加或移除checked属性
 * 参数obj：是thead的checkbox
 */
function tbodyAddCheckedOpt(obj) {
	debugger;
	var $obj = $(obj);
	if ($obj.attr("checked") == "checked") {
		$(obj).attr("checked", false); //已选中的行取消选中，移除checked属性
	} else { 		
		$(obj).attr("checked", true); // 未选中，添加checked属性
	}
}

//跳转至修改博客页面
function blogUpdateViewFtl(blogId) {
	window.location.href = "/Blog-qwc/admin/blogUpdateViewFtl?id=" + blogId;
}