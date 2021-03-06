<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.gr.woc.po.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Team Details</title>
<meta name="description"
	content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit,      AngularJS, ui route, charts, widgets, components" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/animate.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="css/font.css" type="text/css" />
<link rel="stylesheet" href="css/app.css" type="text/css" />
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<style type="text/css">
#preview {
	width: 130px;
	height: 130px;
	border-radius: 350px;
	border: 0px; solid #000;
	overflow: hidden;
}

#img {
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);
}

<!--
.STYLE00 {
	color: #7BD983;
	font-size: 9px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.STYLE1 {
	color: #7BD983;
	font-size: xx-large;
	font-weight: 900;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.STYLE2 {
	font-size: large;
}

.STYLE3 {
	font-size: large;
	color: #666;
}

.STYLE4 {
	font-size: 16px;
	color: #666;
}

.STYLE5 {
	font-size: 9px;
	color: #333333;
}

.STYLE6 {
	color: #666;
}

.STYLE7 {
	color: #000000;
	font-size: x-large;
}

.STYLE8 {
	font-size: medium;
	color: #FFF;
}
-->
</style>
</head>

<body>
	<div class="app app-header-fixed" id="app">
		<!-- 导航栏 -->
		<div class="app-header navbar">
			<!-- 导航栏-header -->
			<div class="navbar-header bg-dark">
				<!-- 没弄懂这一部分button是干嘛的-->
				<button class="pull-right visible-xs dk" data-toggle="class:show"
					data-target=".navbar-collapse">
					<i class="glyphicon glyphicon-cog"></i>
				</button>
				<button class="pull-right visible-xs" data-toggle="class:off-screen"
					data-target=".app-aside" ui-scroll="app">
					<i class="glyphicon glyphicon-align-justify"></i>
				</button>
				<!-- /没弄懂这一部分button是干嘛的-->
				<!-- 导航栏左侧 logo comeco -->
				<a href="#/" class="navbar-brand text-lt"> <i class="STYLE00">comeco</i>
				</a>
				<!-- / logo cocome-->
			</div>
			<!-- / 导航栏-header -->

			<!-- 中间白色部分的导航栏 -->
			<div
				class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
				<!-- 左侧导航缩进&个人信息图标-->
				<div class="nav navbar-nav hidden-xs">
					<!-- 左侧导航缩进图标-->
					<a href="#" class="btn no-shadow navbar-btn"
						data-toggle="class:app-aside-folded" data-target=".app"> <i
						class="fa fa-dedent fa-fw text"></i> <i
						class="fa fa-indent fa-fw text-active"></i>
					</a>
					<!--/左侧导航缩进图标-->
				</div>
				<!-- / 左侧导航缩进&个人信息图标 -->

				<!--下拉菜单以及链接-->
				<ul class="nav navbar-nav hidden-sm">
					<!--Mega-->
					<li class="dropdown pos-stc"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"> <span
							class="m-t-xs m-b-xs STYLE5">搜索选项</span> <span class="caret"></span>
					</a>
						<div class="dropdown-menu wrapper w-full bg-white">
							<div class="row">
								<div class="col-sm-4">
									<!--项目的选项-->
									<div class="m-l-xs m-t-xs m-b-xs font-bold">
										<i class="icon-docs"></i> 按项目搜索
									</div>
									<form name="form1" method="post" action="">
										<div class="row">
											<div class="col-xs-6">
												<ul class="list-unstyled l-h-2x">

													<p>
														<label> <input type="radio" name="RadioGroup1"
															value="0" id="RadioGroup1_0"> 项目名称
														</label> <br> <label> <input type="radio"
															name="RadioGroup1" value="1" id="RadioGroup1_1">
															项目时间
														</label> <br>
													</p>

												</ul>
											</div>
											<div class="col-xs-6">
												<ul class="list-unstyled l-h-2x">
													<label> <input type="radio" name="RadioGroup1"
														value="2" id="RadioGroup1_1"> 项目区域
													</label>
													<br>
												</ul>
											</div>
										</div>
								</div>
								</form>
								<!--/项目的选项-->

								<!--成员的选项-->
								<div class="col-sm-4 b-l b-light">
									<div class="m-l-xs m-t-xs m-b-xs font-bold">
										<i class="icon-graduation"></i> 按成员搜索
									</div>
									<div class="row">
										<div class="col-xs-6">
											<ul class="list-unstyled l-h-2x">

											</ul>
										</div>
										<div class="col-xs-6">
											<ul class="list-unstyled l-h-2x">

											</ul>
										</div>
									</div>
								</div>
								<!--成员的选项-->
								<!--Analysis的选项-->
								<div class="col-sm-4 b-l b-light">
									<div class="m-l-xs m-t-xs m-b-sm font-bold">
										<i class="icon-eyeglasses"></i> 按招聘搜索
									</div>
									<div class="text-center">
										<div class="inline">
											<div ui-jq="easyPieChart"
												ui-options="{
										  percent: 65,
										  lineWidth: 50,
										  trackColor: '{{app.color.light}}',
										  barColor: '{{app.color.info}}',
										  scaleColor: false,
										  size: 100,
										  rotate: 90,
										  lineCap: 'butt',
										  animate: 2000
										}">
											</div>
										</div>
									</div>
								</div>
								<!--/Analysis的选项-->
							</div>
						</div></li>
					<!--/Mega-->
				</ul>
				<!--下拉菜单以及链接-->

				<!-- 搜索框-->
				<form class="navbar-form navbar-form-sm navbar-left shift"
					ui-shift="prependTo" data-target=".navbar-collapse" role="search"
					ng-controller="TypeaheadDemoCtrl">
					<div class="form-group">
						<div class="input-group">
							<input type="text" ng-model="selected"
								typeahead="state for state in states | filter:$viewValue | limitTo:8"
								class="form-control input-sm bg-light no-border rounded padder"
								placeholder="Search projects..."> <span
								class="input-group-btn">
								<button type="submit" class="btn btn-sm bg-light rounded">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</div>
				</form>
				<!-- / 搜索框 -->

				<!-- 导航栏右侧 -->
				<ul class="nav navbar-nav navbar-right">

					<!--个人信息列表-->
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle clear" data-toggle="dropdown"> <span
							class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
								<img src="img/a0.jpg" alt="..."> <i
								class="on md b-white bottom"></i>
						</span> <span class="hidden-sm hidden-md">${sessionScope.user.name}</span>
							<b class="caret"></b>
					</a> <!-- 下拉个人信息-->
						<ul class="dropdown-menu animated fadeInRight w">
							<li><a href> <i class="icon-user icon text-success-lter"></i>
									<span>个人信息</span>
							</a></li>
							<li><a href=""> <i
									class="icon icon-bubbles text-success"></i> <span>我的小组</span>
							</a></li>

							<li class="divider"></li>
							<li><a href="signuplogin.html"> <i
									class="glyphicon glyphicon-log-out text-success"></i> <span>退出登录</span>
							</a></li>
						</ul> <!-- / 下拉个人信息 --></li>
					<!--个人消息列表-->
				</ul>
				<!-- / 导航栏右侧-->
			</div>
			<!-- / 中间白色部分的导航栏 -->
		</div>
		<!-- / 导航栏-->

		<!-- 左侧菜单栏-->
		<div class="app-aside hidden-xs bg-dark">
			<div class="aside-wrap">
				<div class="navi-wrap">
					<!-- 左侧 项目类别 -->
					<nav ui-nav class="navi">
						<ul class="nav">
							<!--项目类别-->

							<i class="glyphicon glyphicon-list well-lg text-success-dk"></i>
							<span class=" hidden-folded padder m-t-xs m-b-xs STYLE8">项目分类</span>
							<nav ui-nav class="navi">
								<ul class="nav">
									<ul class="list-group">

										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">电子类</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">电子类</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生电子设计竞赛</span>
												</a></li>
											</ul></li>

										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">数学类</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">数学类</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生数学建模竞赛（本科）</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国研究生数学建模竞赛（研究生）</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>美国大学生数学建模竞赛（国际赛）</span>
												</a></li>

											</ul>
										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">环境类</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">环境类</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生节能减排社会实践与科技竞赛</span>
												</a></li>
											</ul></li>


										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">创业类</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">创业类</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生“挑战杯”创业大赛</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生电子商务竞赛</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生营销大赛</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>全国大学生ERP沙盘比赛</span>
												</a></li>
											</ul></li>
										<li ui-sref-active="active"><a href> <span
												class="font-bold" translate="aside.nav.CALENDAR">其他类</span>
										</a></li>

									</ul>
								</ul>

								<!--项目类别-->
							</nav>
							<!-- / 左侧 项目类别 -->
				</div>
			</div>
		</div>
		<!-- / 左侧菜单栏 -->

		<!-- 右侧白色部分内容 -->
		<div class="app-content">
			<div ui-butterbar></div>
			<a href class="off-screen-toggle hide" data-toggle="class:off-screen"
				data-target=".app-aside"></a>
			<div class="app-content-body fade-in-up">
				<!-- COPY the content from "tpl/" -->
				<div class="hbox hbox-auto-xs hbox-auto-sm">
					<div class="col">
						<div
							style="background: url(img/c4.jpg) center center; background-size: cover">
							<div class="wrapper-lg bg-white-opacity">
								<i class="STYLE1">comeco</i>
								<div class="row m-t">

									<!--小组信息-->
									<div class="col-sm-7">
										<a href class="thumb-lg pull-left m-r"> <img
											src="img/slide1.jpg" class="img-circle">
										</a>
										<div class="clear m-b">
											<div class="m-b m-t-sm">
												<span class="h3 text-black">${requestScope.team.name }</span>
												<c:forEach items="${requestScope.type }" var="type">
													<small class="m-l">${type.name }</small>
												</c:forEach>
											</div>
										</div>
									</div>
									<!--/小组信息--->
									<div class="col-sm-5">
										<div class="pull-right pull-none-xs text-center">
											<a href="/COMECO/DeleteTeam?id=${requestScope.team.id }" class="m-b-md inline m"> <i
												class="glyphicon glyphicon-eject text-success-dk text-2x"></i>
												<span class="h4 block">删除小组</span>
											</a> <a href class="m-b-md inline m"> </a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--小组信息-->
						<div class="padder">
							<div class="wrapper bg-white b-b">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#1">小组信息</a></li>
									<li><a href="#2">小组文件</a></li>
									<li><a href="#3">小组动态</a></li>
									<li><a href="#4">修改信息</a></li>
								</ul>

								<div class="tab-content">
									<!--小组信息--->
									<div class="tab-pane active" id="1">
										<ul class="list-group">
											<li class="list-group-item">
												<h4>小组类型：理工型</4>
											</li>
											<li class="list-group-item">
												<h4>
													开始时间：${requestScope.team.start_time }</4>
													<h4>结束时间：${requestScope.team.end_time }</4>
											</li>
											<li class="list-group-item">
												<h4>小组人数上限：${requestScope.team.max_mem }人</4>
											</li>
										</ul>

									</div>

									<!---小组文件--->
									<div class="tab-pane" id="2">
										<div class="streamline b-l b-success m-l-lg m-b padder-v">
											<table class="table table-hover table-condensed">
												<thead>
													<tr>
														<th>文件名</th>
														<th>创建人</th>
														<th>下载</th>
													</tr>
												</thead>
												<!--exmp1--->
												<tbody>
													<tr>
														<td><i
															class="icon icon-folder-alt text-success-dker text-2x"></i>
															<small>数据库里好像没有文件名这个属性</small></td>
														<td><small>创建人的名字好像也没有</small></td>
														<td><a href=""> <i
																class="glyphicon glyphicon-circle-arrow-down text-success-dker text-2x">
															</i>
														</a></td>
													</tr>
												</tbody>
												<!--exmp2--->
												<tbody>
													<tr>
														<td><i
															class="icon icon-folder-alt text-success-dker text-2x"></i>
															<small>文件的下载是在前台or后台实现？</small></td>
														<td><small>文件真的能下载？</small></td>
														<td><i
															class="glyphicon glyphicon-circle-arrow-down text-success-dker text-2x" /></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<!--小组动态--->
									<div class="tab-pane" id="3">
										<div class="streamline b-l b-success m-l-lg m-b padder-v">
											<!---exmp1--->
											<div>
												<a class="pull-left thumb-sm avatar m-l-n-md"> <img
													src="img/a6.jpg" class="img-circle" alt="...">
												</a>
												<div class="m-l-lg m-b-lg">
													<div class="m-b-xs">
														<a href class="h4">小组成员名字</a> <span
															class="text-muted m-l-sm"> 3h ago </span> <span
															class="m-l-sm"> 加入小组 </span>
													</div>
													<div class="m-b"></div>
												</div>
											</div>
											<!---/exmp1--->

											<!--exmp2-->
											<div>
												<a class="pull-left thumb-sm avatar m-l-n-md"> <img
													src="img/a6.jpg" class="img-circle" alt="...">
												</a>
												<div class="m-l-lg m-b-lg">
													<div class="m-b-xs">
														<a href class="h4">数据库里没有这个属性。。。</a> <span
															class="text-muted m-l-sm"> 3h ago </span> <span
															class="m-l-sm"> 加入小组 </span>
													</div>
													<div class="m-b"></div>
												</div>
											</div>
											<!---/exmp2--->

										</div>
									</div>

									<!---修改信息--->
									<div class="tab-pane" id="4">
										<div align="center">
											<form name="form2" method="post" action="">
												<!---头像--->
												<div id="preview">
													<img id="img" class="img-circle" border=0
														src="img/head_180.jpg" width="130" height="130" />
												</div>
												<input type="file" onChange="previewImage(this)" />
												<div class="line"></div>

												<!--开始时间--->
												<span class="right">选择开始时间</span>
												<div class="form-group">
													<div class="input-group date form_datetime col-md-5"
														data-date=" " data-date-format="dd MM yyyy - HH:ii p"
														data-link-field="dtp_input1">
														<input class="form-control" size="6" type="text" value=""
															name="" readonly> <span class="input-group-addon"><span
															class="glyphicon glyphicon-remove"></span></span> <span
															class="input-group-addon"><span
															class="glyphicon glyphicon-th"></span></span>
													</div>
													<input type="hidden" id="dtp_input1" value="" /><br />
												</div>

												<!---结束时间--->
												<span class="right">选择结束时间 </span>
												<div class="form-group">
													<div class="input-group date form_datetime col-md-5"
														data-date=" " data-date-format="dd MM yyyy - HH:ii p"
														data-link-field="dtp_input1">
														<input class="form-control" size="6" type="text" value=""
															name="" readonly> <span class="input-group-addon"><span
															class="glyphicon glyphicon-remove"></span></span> <span
															class="input-group-addon"><span
															class="glyphicon glyphicon-th"></span></span>
													</div>
													<input type="hidden" id="dtp_input1" value="" /><br />
												</div>

												<!--队伍名称--->
												<span class="right">输入队伍名称</span>
												<div class="form-group">
													<div class="input-group col-md-5">
														<input class="form-control" size="6" type="text" value=""
															name="">
													</div>
												</div>
												<div class="line"></div>


												<span>选择小组类型</span>
												<div>
													<select name="team_type" class="w-xl">
														<option value="0" selected>工科</option>
														<option value="1">理科</option>
														<option value="2">文科</option>
														<option value="3">其他</option>
													</select>
												</div>
												<div class="line"></div>

												<span> 选择小组人数</span>
												<div>
													<select name="max_mem" class="w-xl">
														<option value="4" selected>2</option>
														<option value="5">3</option>
														<option value="6">4</option>
														<option value="7">5</option>
														<option value="8">5个以上</option>
													</select>
												</div>
												<div class="line"></div>

												<!--确认修改--->
												<div>
													<button type="submit" class="btn btn-md btn-default m-t-md">
														<a href="">确认修改</a>
													</button>
												</div>
											</form>
										</div>
									</div>
									<!---/确认修改--->
								</div>

								<script>
					  $(function () {
						$('#myTab a:last').tab('show');
					  })
					</script>

							</div>
						</div>
						<!--/小组信息-->
					</div>

					<!--右侧小组成员-->

					<div class="col w-lg bg-light lter b-l bg-auto">
						<div class="wrapper">

							<!--小组成员-->
							<div class="panel b-a">
								<i
									class="icon icon-bubbles text-success text-2x text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE3"></span> <span
									class="m-t-xs m-b-xs STYLE4">小组成员</span><br>
								<ul class="list-group">
									<li class="list-group-item">
										<!---leader-->
										<div class="panel-body">
											<a href="" class="pull-left thumb-sm avatar m-r"> <img
												src="img/a0.jpg" class="img-circle">
											</a>
											<div class="clear">
												<a href="" class="text-info">@队长名字 </a> <small
													class="block text-muted"><i
													class="fa fa-smile-o text-danger-dker"></i>Leader</small>
											</div>
										</div> <!---leader--> <!--admin--->
										<div class="panel-body">
											<a href="" class="pull-left thumb-sm avatar m-r"> <img
												src="img/a0.jpg" class="img-circle">
											</a>
											<div class="clear">
												<a href="" class="text-info">@管理员名字 </a> <small
													class="block text-muted"><i
													class="fa fa-smile-o text-warning-dker"></i>Admin</small>
											</div>
										</div> <!--/admin---> <!--members--->
										<div class="panel-body">
											<a href="" class="pull-left thumb-sm avatar m-r"> <img
												src="img/a0.jpg" class="img-circle">
											</a>
											<div class="clear">
												<a href="" class="text-info">@成员名字 </a> <small
													class="block text-muted"><i
													class="fa fa-smile-o text-success-dker"></i>Member</small>
											</div>
										</div> <!--/members--->

									</li>
								</ul>


							</div>
							<!--/小组成员-->

							<!--添加小组成员--->
							<div class="panel b-a">
								<i class="icon icon-star text-success text-2x text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE3"></span> <span
									class="m-t-xs m-b-xs STYLE4">添加成员</span><br>
								<ul class="list-group">
									<li class="list-group-item">
										<form action="" method="get">
											<input name="user_email" type="text" size="30"
												placeholder="输入用户邮箱">
											<div align="center">
												<button type="submit" class="btn btn-sm btn-default m-t-sm ">
													<a href="">确认</a>
												</button>
											</div>
										</form>
									</li>
								</ul>
							</div>
							<!--/添加小组成员--->

						</div>
					</div>
				</div>
				<!-- PASTE above -->
			</div>
		</div>
		<!-- /右侧白色内容 -->

		<!-- footer -->
		<div class="app-footer wrapper b-t bg-light">
			<span class="pull-right">1.0.0 <a href="#app"
				class="m-l-sm text-muted"><i class="fa fa-long-arrow-up"></i></a></span>
			&copy; 2015 Copyright. comeco
		</div>
		<!-- / footer -->
	</div>
	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/jquery/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.fr.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
	   $('.form_datetime').datetimepicker({
				//language:  'fr',
				weekStart: 1,
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				forceParse: 0,
				showMeridian: 1
			});
			$('.form_date').datetimepicker({
				language:  'fr',
				weekStart: 1,
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
			});
			$('.form_time').datetimepicker({
				language:  'fr',
				weekStart: 1,
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 1,
				minView: 0,
				maxView: 1,
				forceParse: 0
			});
	  
	   //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
          var MAXWIDTH  = 260; 
          var MAXHEIGHT = 180;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
            
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
	  
	  
	  
        +function ($) {
          $(function(){
            // class
            $(document).on('click', '[data-toggle^="class"]', function(e){
              e && e.preventDefault();
              console.log('abc');
              var $this = $(e.target), $class , $target, $tmp, $classes, $targets;
              !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
              $class = $this.data()['toggle'];
              $target = $this.data('target') || $this.attr('href');
              $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
              $target && ($targets = $target.split(','));
              $classes && $classes.length && $.each($targets, function( index, value ) {
                if ( $classes[index].indexOf( '*' ) !== -1 ) {
                  var patt = new RegExp( '\\s' + 
                      $classes[index].
                        replace( /\*/g, '[A-Za-z0-9-_]+' ).
                        split( ' ' ).
                        join( '\\s|\\s' ) + 
                      '\\s', 'g' );
                  $($this).each( function ( i, it ) {
                    var cn = ' ' + it.className + ' ';
                    while ( patt.test( cn ) ) {
                      cn = cn.replace( patt, ' ' );
                    }
                    it.className = $.trim( cn );
                  });
                }
                ($targets[index] !='#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
              });
              $this.toggleClass('active');
            });
    
            // collapse nav
            $(document).on('click', 'nav a', function (e) {
              var $this = $(e.target), $active;
              $this.is('a') || ($this = $this.closest('a'));
              
              $active = $this.parent().siblings( ".active" );
              $active && $active.toggleClass('active').find('> ul:visible').slideUp(200);
              
              ($this.parent().hasClass('active') && $this.next().slideUp(200)) || $this.next().slideDown(200);
              $this.parent().toggleClass('active');
              
              $this.next().is('ul') && e.preventDefault();
    
              setTimeout(function(){ $(document).trigger('updateNav'); }, 300);      
            });
			
			//标签页
			$('#myTab a').click(function (e) {
			  e.preventDefault();
			  $(this).tab('show');
             })
			
		   $('a[data-toggle="tab"]').on('shown', function (e) {
			  e.target // activated tab
			  e.relatedTarget // previous tab
			})
			
          });
        }(jQuery);
		
      </script>
</body>
</html>