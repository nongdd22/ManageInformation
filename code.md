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
				<a href="业务处理-快件进库.html">快件进库</a>
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
   
   <div class="title_right"><strong>矿大物流到货清单</strong></div>  
   <div style="width:900px; margin:auto">
       <table class="table table-bordered">
         <tr>
     <td width="10%" align="right" bgcolor="#f1f1f1">发货地：</td>
     <td width="23%"><input type="text" name="input18" id="input18" class="span1-1" /></td>
     <td width="10%" align="right" bgcolor="#f1f1f1">收货地：</td>
     <td width="23%"><input type="text" name="" id=""  class="span1-1"  /></td>
     <td width="10%" align="right" bgcolor="#f1f1f1">到货日期：</td>
     <td><input type="text"  class="laydate-icon span1-1" id="Calendar" value="2015-08-25"    /></td>
     </tr>
     <tr>
     <td align="right" bgcolor="#f1f1f1">货单号：</td>
     <td><input type="text" name="" id="" class="span1-1"  /></td>
     <td align="right" bgcolor="#f1f1f1">快递公司：</td>
     <td><input type="text" name="Input" id="Input"  class="span1-1"></td>
     <td colspan="2"><input type="radio" />
       全部&nbsp;&nbsp;&nbsp;&nbsp; 
         <input type="radio" />
         已提货&nbsp;&nbsp;&nbsp;&nbsp; 
         <input type="radio" />
         未提货</td>
     </tr>
       </table>
       <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="button" value="确定" class="btn btn-info " style="width:80px;" /></td>
     </tr>
 </table>
       <table class="table table-bordered">
         <tr>
           <td width="7%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>编号</strong></td>
           <td width="8%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>订单号</strong></td>
           <td width="12%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>发货日期</strong></td>
           <td width="7%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>发货地</strong></td>
           <td width="7%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收货地</strong></td>
           <td width="9%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>发货人</strong></td>
           <td width="9%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收货人</strong></td>
          </tr>
         <tr>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
          </tr>
       </table>
      <table width="76%" class="table table-bordered">
         <tr>
           <td width="13%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>重量</strong></td>
           <td width="16%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>体积</strong></td>
           <td width="14%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>包装</strong></td>
           <td width="15%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>件数</strong></td>
           <td width="12%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>货物名称</strong></td>
           <td width="13%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>收货人电话 </strong></td>
           <td width="17%" align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>提货方式</strong></td>
          </tr>
         <tr>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
           <td align="center">&nbsp;</td>
          </tr>
       </table>
   <table class="table table-bordered">
  <tr>
    <td width="10%" align="right" nowrap="nowrap">&nbsp;</td>
    <td width="23%">&nbsp;</td>
    <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">&nbsp;</td>
    <td width="33">&nbsp;</td>
    </tr>
   </table>
   <table  class="margin-bottom-20 table  no-border" >
     <tr>
       <td class="text-center"><input type="button" value="打印" class="btn btn-info  margin-right-20" style="width:80px;" /></td>
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
laydate.skin('molv');
laydate({elem: '#Calendar2'});
}();
 
</script>



 
</body>
</html>





```
