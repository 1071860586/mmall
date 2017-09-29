

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="css/site.css">
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
<title>慕课答疑平台</title>
<script language="javascript">

	function getNew() {
		
		// Ajax异步请求最新五条
	}
	
	function getHot() {
		
		// Ajax异步请求最热五条,就是评论最多的五条
	}
	
	function getTheme() {
		
		// Ajax异步请求, 最热的五个主题
	}
	
	$(function() {
		getNew();
		getHot();
		getTheme();
	});
</script>
</head>
<body>
	<jsp:include flush="false" page="/header.jsp" />
	<div class="container">
		
		<div class="row">
			<div class="col-sm-4">
				<div
					style="overflow: auto; height: 60px; line-height: 40px; padding-top: 20px;">
					<div style="float: left">
						<h3 style="display: inline">最新</h3>
					</div>
					<div style="float: right; vertical-align: bottom;">
						<a href="newmsg.jsp">更多>></a>
					</div>
				</div>
				<div>
					<ul class="list-group newList">
						<li class="list-group-item template">
							<span class="badge"></span>
							<a class="msgtile text-limit"></a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">8/29</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=7">不错哦221133</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">8/28</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=6">网站Bug请在此留下</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">8/28</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=5">如何完全卸载MySQL数据库</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">8/28</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=4">盒子模型是怎么回事?</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">8/28</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>
					</ul>
				</div>
				
			</div>
			<div class="col-sm-4">
				<div
					style="overflow: auto; height: 60px; line-height: 40px; padding-top: 20px;">
					<div style="float: left">
						<h3 style="display: inline">最热</h3>
					</div>
					<div style="float: right; vertical-align: bottom;">
						<a href="hotmsg.jsp">更多>></a>
					</div>
				</div>
				<div>
					<ul class="list-group hotList">
						<li class="list-group-item" display="block">
							<span class="badge">5</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=5">如何完全卸载MySQL数据库</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">5</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">1</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=4">盒子模型是怎么回事?</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">1</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=1">Java 命令行打印圣诞树</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">0</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=2">异步是啥东西</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-sm-4">
				<div
					style="overflow: auto; height: 60px; line-height: 40px; padding-top: 20px;">
					<div style="float: left">
						<h3 style="display: inline">话题</h3>
					</div>
					<div style="float: right; vertical-align: bottom;">
						<a href="thememsg.jsp">更多>></a>
					</div>
				</div>
				<div>
					<ul class="list-group themeList">
						<li class="list-group-item" display="block">
							<span class="badge">JavaWeb</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=7">不错哦221133</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">BUG反馈</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=6">网站Bug请在此留下</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">MySQL</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=5">如何完全卸载MySQL数据库</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">Web前端</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=4">盒子模型是怎么回事?</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">Java</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<jsp:include flush="false" page="footer.jsp" />
	
</body>
</html>