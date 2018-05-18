<!--language的用法-->
<!--第一阶段 将jsp转化为.java 第二阶段 将.java转化为.class 第三阶段从服务器到浏览器（借助contentType)-->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--uri是什么-->
<!--url是uri的子集 url还定义如何到达这个资源-->
<!--prefix是什么-->
<!--前缀 用来标签声明 后面就能使用该标签s开头的了-->
<%@ taglib uri="/struts-tags"   prefix="s"%>
<!--DTD是什么东西 有什么用-->
<!--有了dtd 就有了xml规范智能提醒的功能 为了验证xml文件编写的合法性-->
<!--DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--lang是什么 class后面的是干嘛用的"-->
<!--猜想lang就是language class用以指定样式表中的类-->
<html lang="zh-CN" class="ax-vertical-centered">
<head>
    <!--为啥好几次规定编码格式-->
    <!--我认为 这是规定本文件的编码 而上面的是规定的转化成的java文件的编码格式-->
	<meta charset="UTF-8">
	<title>图书馆管理系统</title>
            <!--meta到底有啥用-->
            <!--meta提供关于html文件的信息 用如何显示内容 关键词等-->
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!--link有了href rel还有什么意义-->
            <!--rel确定调用方式 href确定调用路径-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--绝对路径和相对路径各有什么优缺点-->
    <!--等价与<%=request.getContextPath()%> -->
    <!--如果发布的时候应用名更改的话 所有都要跟着变-->
    <!--如果全使用相对路径的话 想要复制代码重用会比较复杂-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-admin-theme.css">
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/jQuery/jquery-3.1.1.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/bootstrap-dropdown.min.js"></script>
              <script src="${pageContext.request.contextPath}/js/reader.js"></script>
              
             <script src="${pageContext.request.contextPath}/ajax-lib/ajaxutils.js"></script>
            <script src="${pageContext.request.contextPath}/js/readerUpdateInfo.js"></script>
             <script src="${pageContext.request.contextPath}/js/readerUpdatePwd.js"></script>

</head>



<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


<body class="bootstrap-admin-with-small-navbar">
<!--nav是啥标签 有啥用 role又是干啥的-->
<!--nav是标注一个导航链接的区域 里面都是链接-->
<!--role向浏览器表明这是一个navigator容器 不要使用普通的方法处理 就类似于rel-->
<nav class="navbar navbar-inverse navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
    <!--div本身是一种不明确的标签吗与普通的标签有什么区别 div嵌套有什么特色-->
    <!--div主要是设置相对上一层的位置 对于布局效果强大-->
    <!--这些引入的样式表可以预览吗 用什么方式预览 或者使用netbeans自带的css预览工具-->
    <!--利用浏览器工具进行预览-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="collapse navbar-collapse main-navbar-collapse">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/reader.jsp"><strong>欢迎使用图书馆管理系统</strong></a>
                    <ul class="nav navbar-nav navbar-right">
                    <!--这些判断是依附于什么实体的-->
                    <!--我认为逻辑判断先于实体显示 比如前台某个值为0 那么就不显示为0时候的按钮-->
                    <!--这里如果登陆名变量为0 就以第一种形式展现-->
                    <!--否则以第二种形式展现-->
                    <s:if test="#session.reader!=null"><!-- 判断是否已经登录 -->
                        <li class="dropdown">
                            <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i>     欢迎您，<s:property value="#session.reader.name"/><i class="caret"></i></a>
                            <ul class="dropdown-menu">
                                <!--#号是什么定位方式-->
                                <!--我认为是当前页面的意思-->
                                <!--查询得知#是某个锚点节点的意思-->
                                <!--我认为这个锚点也是引入的那几个中的一个-->
                                <!--那为什么简写呢-->
                                <!--data-toggle是啥意思-->
                                <!--我认为这是模糊窗的开关的意思 一开始模糊的形式显示-->
                                <!--后来根据变量的变化改变形式-->
                                <li><a href="#updateinfo" data-toggle="modal">个人资料</a></li>
                                <!--role="presentation"是什么显示-->
                                 <li role="presentation" class="divider"></li>
                                <li><a href="#updatepwd" data-toggle="modal">修改密码</a></li>
                                <!--divider是什么意思啊-->
                                <!--一个分隔符而已-->
                                <li role="presentation" class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/readerLoginAction_logout.action">退出</a></li>
                            </ul>
                        </li>
                        </s:if>
                        <s:else><!-- 如果未登录，出现登录按钮 -->
                        	<button type="button" class="btn btn-default btn-sm "  id="btn_login" style="margin: 10" data-dismiss="modal">登录</button>
                        </s:else>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <!-- left, vertical navbar & content -->
    <div class="row">
        <!-- left, vertical navbar -->
        <div class="col-md-2 bootstrap-admin-col-left">
            <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                <li>
                    <a href="${pageContext.request.contextPath}/bookAction_findBookByPage.action"><i class="glyphicon glyphicon-chevron-right"></i> 图书查询</a>
                </li>
                <s:if test="#session.reader!=null"><!-- 判断是否登录 -->
	                <li>
	                    <a href="${pageContext.request.contextPath}/reader/borrowAction_findMyBorrowInfoByPage.action"><i class="glyphicon glyphicon-chevron-right"></i> 借阅信息</a>
	                </li>
                </s:if>
                <s:if test="#session.reader!=null"><!-- 判断是否登录 -->
	                <li>
	                    <a href="${pageContext.request.contextPath}/reader/forfeitAction_findMyForfeitInfoByPage.action"><i class="glyphicon glyphicon-chevron-right"></i> 逾期信息</a>
	                </li>
                </s:if>
                
                    
                
            </ul>
        </div>

        <!-- content -->
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">图书查询</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>根据图书编号、图书名称查询图书信息</li>
                                <li>可查询图书的编号、名称、分类、作者、价格、在馆数量等</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        <s:if test="#session.reader!=null"><!-- 判断用户是否登录 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">借阅信息</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>根据借阅编号、图书名称查询自己借阅的图书信息</li>
                                <li>可查询除图书的基本信息、借阅日期、截止还书日期、超期天数等</li>
                            </ul>
                        </div>
                    </div>
                </div>
                         
                
            </div>
          </s:if> 
            <s:if test="#session.reader!=null"><!-- 判断用户是否登录 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">逾期信息</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>根据借阅编号、图书名称查询自己借阅的图书信息</li>
                                <li>可查询除图书的基本信息、借阅日期、归还时期、超期天数、需缴纳的罚金等</li>
                            </ul>
                        </div>
                    </div>
                </div>
                         
                
            </div>
          </s:if> 
        </div>
    </div>
</div>








<!-------------------------------------------------------------->  
                 
                   <form class="form-horizontal">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updatepwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									修改密码
								</h4>
							</div>
							
							<div class="modal-body">
							 
								<!--正文-->
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">原密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" id="oldPwd"  placeholder="请输入原密码">
										<label class="control-label" for="oldPwd" style="display: none"></label>				
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">新密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" id="newPwd"  placeholder="请输入新密码">
										<label class="control-label" for="newPwd" style="display: none"></label>			
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">确认密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" id="confirmPwd"  placeholder="请输入确认密码">
										<label class="control-label" for="confirmPwd" style="display: none"></label>				
								</div>
							</div>	
								<!--正文-->
								
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="button" class="btn btn-primary" id="update_readerPwd">
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   <!-------------------------个人资料模糊框------------------------------------->  
                 
                   <form class="form-horizontal">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updateinfo" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="ModalLabel">
									个人资料
								</h4>
							</div>
							
							<div class="modal-body">
							 
								<!--正文-->
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">真实姓名</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="name"  placeholder="请输入您的真实姓名" value='<s:property value="#session.reader.name"/>'>
										<label class="control-label" for="name" style="display: none"></label>			
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">联系号码</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="phone"  placeholder="请输入您的联系号码" value='<s:property value="#session.reader.phone"/>'>
											<label class="control-label" for="phone" style="display: none"></label>				
								</div>
							</div>	
							
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">邮箱</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="email"  placeholder="请输入您的邮箱" value='<s:property value="#session.reader.email"/>'>
											<label class="control-label" for="email" style="display: none"></label>				
								</div>
							</div>	
							
								<!--正文-->
								
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="button" class="btn btn-primary" id="reader_updateInfo">
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->



    <div class="modal fade" id="modal_info" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="infoModalLabel">提示</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12" id="div_info"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btn_info_close" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>



</body>
</html>