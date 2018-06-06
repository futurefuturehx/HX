<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="bootstrap-admin-vertical-centered">
<head>
	<meta charset="UTF-8">
	<title>图书馆管理系统后台</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-admin-theme.css">
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/jQuery/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/ajax-lib/ajaxutils.js"></script>
         <script src="${pageContext.request.contextPath}/js/adminLogin.js"></script>
</head>

<style type="text/css">
    <!--这边啥意思-->
    <!--这边不是js 这边只是为警示框设置一下格式-->
        .alert{
            margin: 0 auto 20px;
            text-align: center;
        }
    </style>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


<body class="bootstrap-admin-without-padding">
<!--这边div有次序吗-->
<!--题外话 可以使用google开发者工具体验-->
<!--row就是一行 col是一列的意思-->
<!--div里面的总是比外面的小两边空白 主要用来布局-->
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <!--这边文字位置好像不对啊-->
            <!--对于上一层div 叉号的相对位置是确定的-->
            <div class="alert alert-info">
                <!--这边href="#"什么意思-->
                <!--点击这个叉号之后 就链接到本页面-->
                
                <!--&times啥意思-->
                <!--特殊字符都是用&来表示 这里乘号来代替叉叉 dismiss只是功能 乘号才是显示-->
                <a class="close" data-dismiss="alert" href="#">&times;</a>
                欢迎登录图书馆管理系统后台
            </div>
            <!--大框架套小框架-->
            <form class="bootstrap-admin-login-form"><!--引用大框架-->
                <div class="form-group">
                    <!--一个组套着label或input-->
                    <label class="firstname" for="username">账&nbsp;号</label>
                    <input type="text" class="form-control" id="username" placeholder="管理员用户名"/>
                    <label class="control-label" for="username" style="display:none;"></label>
                </div>
                <div class="form-group">
                    <label class="firstname" for="password">密&nbsp;码</label>
                    <input type="password" class="form-control" id="password" placeholder="密码"/>
                    <label class="control-label" for="username" style="display:none;"></label>
                </div>
                <!--button包含在大框架中 但是不属于组-->
                <input type="button" class="btn btn-lg btn-primary" id="login_submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"/>
            </form>
        </div>
    </div>
</div>
            <!--dismiss="modal"啥意思-->
            <!--modal是模态框的意思-->
            <!--在不离开当前页面的情况下 提供一个来自单独源的内容 也就是一个弹出框"-->
<div class="modal fade" id="modal_info" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <!--这么多的modal部分啥意思 有啥层次关系-->
    <!--前面几个大框架是必须的-->
    <!--modal-header是标题的内容的显示-->
    <!--modal-body是主要内容-->
    <!--modal-foot是按键内容-->
    
    <!--模糊框出发条件在哪里 触发源在哪里-->
    <!--账号不正确且点击登录之后出现-->
    <!--应该在登录按钮-->
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