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
<ul class="breadcrumb">
  当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
  <a href="#">业务处理</a> <span class="divider">/</span>快件分类
</ul>
   <div class="container-fluid">
   <div class="title_right"><strong>快件地址分类</strong></div>  
       <div style="width:900px; margin:auto">
         <table width="101%" class="table table-bordered">
           
           <tr>
             <td width="8%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">编号：</td>
             <td width="20%"><input type="text" name="Input" id="Input"  class="span1-1" /></td>
          
             <td align="center"><input type="radio" />桃苑</td>
             <td align="center"><input type="radio" /> 松苑</td>
             <td align="center"><input type="radio" /> 竹 苑</td>
             <td align="center"><input type="radio" />杏苑</td>
             <td align="center"><input type="radio" />  梅苑</td>
             <td align="center"><input type="radio" />  研究生楼</td>
           </tr>
           <tr>
             <td width="8%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">派送员：</td>
             <td width="20%"><input type="text" name="Input" id="Input"  class="span1-1" /></td>
          
             <td align="center"><input type="radio" />张三</td>
             <td align="center"><input type="radio" />李四</td>
             <td align="center"><input type="radio" />王五</td>
             <td align="center"><input type="radio" />苏六</td>
             <td align="center"><input type="radio" />岳七</td>
             <td align="center"><input type="radio" />林八</td>
           </tr>
         </table>
         <table class="table table-bordered" >
           <tr>
             <td width="8%" height="33" align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
             <td width="66" nowrap="nowrap"><input type="text" name="input9" id="input9" class="span10"></td>
           </tr>
         </table>
         <table  class="margin-bottom-20  table no-border" >
           <tr>
             <td class="text-center"><input name="button" type="button" class="btn btn-info  " style="width:80px;" value="确定" /></td>
           </tr>
         </table>
          <table class="table table-bordered">
         <tr>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>编号</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收件人</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>发货电话</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收货地址</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>分区</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>入库时间</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>派送员</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>备注</strong></td>
         </tr>
         <tr>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
         </tr>
       </table>
         <div class="alert"> 温馨提示：如果是问题快件，请通知到物流园自取。</div>
       </div>
     </div>     
    
    </div>
  
<!-- 底部 -->

    
    

 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
laydate.skin('molv');
laydate({elem: '#Calendar2'});
}();
 
</script>



 
</body>
</html>


```
