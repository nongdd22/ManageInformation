```

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>

<title>矿大快件派送系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/css.css" />
<script type="text/javascript" src="js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript" src="js/laydate/laydate.js"></script>

</head>

<body>
<div class="header">
	 <div class="logo"><img  src="img/logo1.png" /></div>
     
				<div class="header-right">
                <i class="icon-question-sign icon-white"></i> <a href="#">帮助</a> <i class="icon-off icon-white"></i> <a id="modal-973558" href="#modal-container-973558" role="button" data-toggle="modal">注销</a> 
                <div id="modal-container-973558" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:300px; margin-left:-150px; top:30%">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						注销系统
					</h3>
				</div>
				<div class="modal-body">
					<p>
						您确定要退出系统吗？
					</p>
				</div>
				<div class="modal-footer">
					 <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button> <a class="btn btn-primary" style="line-height:20px;" href="登录.html" >确定退出</a>
				</div>
			</div>
				</div>
</div>
<!-- 顶部 -->     
            
<div id="middle">
     <div class="left">
     
     <script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">
	<div class="collapsed">
		<span>业务处理</span>
		<a href="checkin.jsp">快件进库</a>
		<a href="classification.jsp">快件分类</a>
	</div>
	<div class="collapsed">
		<span>快件查询</span>
		<a href="check.jsp">收件查询</a>
		<a href="problem.jsp">问题快件</a>
	</div>
	
	<div class="collapsed">
		<span>出库管理</span>
		<a href="outware.jsp">登记出库</a>
		<a href="state.jsp">投递状态</a>
		<a href="shortmes.jsp">短信通知</a>
	</div>
	<div class="collapsed">
		<span><a href="cooperation.jsp">合作公司</a></span>
	</div>
	
 
 
  
    
</div>

     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script>

     <div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
  <a href="#">快件查询</a> <span class="divider">/</span>
问题快件
</ul>

   <div class="title_right"><strong>问题快件清单</strong></div>  
   <div style="width:900px; margin:auto">
      <table width="101%" class="table table-bordered">
           <tr>
             <td width="2%" align="center" nowrap="nowrap" bgcolor="#f1f1f1">编号：</td>
             <td width="20%"><input type="text" name="Input" id="Input"  class="span1-1" />
           <input name="button" type="button" class="btn btn-info  " style="width:80px;" value="查询" />
             </td>
           </tr>
         </table>
 </table>
       <table class="table table-bordered">
         <tr>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>编号</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收件人</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>联系电话</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>详细住址</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>到站日期</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>问题原因</strong></td>
     
         </tr>
         <tr>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           
         </tr>
       </table>
      
</div>
     
     
     </div>     
     </div>
    </div>
    
<!-- 底部 -->

 <script>
	!function(){
		laydate.skin('molv');
		laydate({elem: '#Calendar'});
			}();

</script>

</body>
</html>


```
