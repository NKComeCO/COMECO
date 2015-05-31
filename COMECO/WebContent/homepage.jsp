<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.gr.comeco.po.*"%>
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
<title>comeco</title>

<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="dwr/interface/MessagePush.js"></script>
<script type="text/javascript">
	//通过该方法与后台交互，确保推送时能找到指定用户
	function personInfo() {
		window.location = "personaldetails.jsp";

	}
</script>


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
<style type="text/css">
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
	<c:if test="${empty requestScope.GetRecruit }">
		<script>
			window.location = "/COMECO/GetNewRecruitServlet";
		</script>
	</c:if>

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


				<form action="/COMECO/GetSearchServlet"
					class="navbar-form navbar-form-sm navbar-left shift"
					ui-shift="prependTo" data-target=".navbar-collapse" role="search"
					ng-controller="TypeaheadDemoCtrl">
					<!--下拉菜单以及链接-->
					<ul class="nav navbar-nav hidden-sm">
						<!--Mega-->
						<li class="dropdown pos-stc"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle"> <span
								class="m-t-xs m-b-xs STYLE5" >搜索选项</span> <span class="caret"></span>
						</a>
							<div class="dropdown-menu wrapper w-full bg-white">
								<div class="row">
									<div class="col-sm-4">
										<form name="form1" method="post" action="">
											<!--项目的选项-->
											<div class="m-l-xs m-t-xs m-b-xs font-bold">
												<i class="icon-docs"></i> 按项目搜索
											</div>
											<div class="row">
												<div class="col-xs-6">
													<ul class="list-unstyled l-h-2x">

														<p>
															<label> <input type="radio" name="type" value="0"
																id="type"/> 项目名称
															</label> <br> <label> <input type="radio"
																name="type" value="1" id="type"/> 项目时间
															</label> <br>
														</p>

													</ul>
												</div>
												<div class="col-xs-6">
													<ul class="list-unstyled l-h-2x">
														<label> <input type="radio" name="type" value="2"
															id="type"/> 项目区域
														</label>
														<br>
													</ul>
												</div>
											</div>
									</div>
									<!--/项目的选项-->

									<!--成员的选项-->
									<div class="col-sm-4 b-l b-light">
										<div class="m-l-xs m-t-xs m-b-xs font-bold">
											<i class="icon-graduation"></i> 按成员搜索
										</div>
										<div class="row">
											<div class="col-xs-6">
												<ul class="list-unstyled l-h-2x">
													<label> <input type="radio" name="type" value="3"
														id="type"/> 成员名称
													</label>
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
										<div class="row">
											<div class="col-xs-6">
												<ul class="list-unstyled l-h-2x">
													<label> <input type="radio" name="type" value="4"
														id="RadioGroup1_3"/> 招聘名称
													</label>
												</ul>
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
					<div class="form-group">
						<div class="input-group">
							<input type="text" ng-model="selected" name="txt" id="txt"
								typeahead="state for state in states | filter:$viewValue | limitTo:8"
								class="form-control input-sm bg-light no-border rounded padder"
								placeholder="Search" width="100px"> <span
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
							<li><a onclick="personInfo();"> <i
									class="icon-user icon text-success-lter"></i> <span>个人信息</span>
							</a></li>
							<li><a href=""> <i
									class="glyphicon icon-bubbles text-success"></i> <span>我的小组</span>
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
									<div class="col-sm-7">
										<a href class="thumb-lg pull-left m-r"> <img
											src="img/a0.jpg" class="img-circle">
										</a>
										<div class="clear m-b">
											<div class="m-b m-t-sm">
												<span class="h3 text-black">${sessionScope.user.name}</span>
												<small class="m-l">${sessionScope.user.district}</small>
											</div>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="pull-right pull-none-xs text-center">
											<a href class="m-b-md inline m"> <span
												class="h3 block font-bold">${sessionScope.user.score}</span>
												<i
												class="glyphicon glyphicon-heart text-danger-dker text-2x"></i>
											</a> <a href class="m-b-md inline m"> </a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="wrapper bg-white b-b">
							<ul class="nav nav-pills nav-sm">
								<i class="glyphicon icon-action-redo text-success-dk"></i>
								<span class="m-l-xs m-t-xs m-b-xs font-bold STYLE7">最新招聘动态</span>

							</ul>
						</div>



						<div class="padder">
							<div class="streamline b-l b-info m-l-lg m-b padder-v">
								<c:forEach items="${requestScope.recruitl }" var="recruit">
									<!--小组信息-->
									<a href="" class="pull-left thumb-sm avatar m-l-n-md"> <img
										src="img/b18.jpg" alt="" align="absmiddle"
										title="Wooden Decals" />
									</a>
									<div class="m-l-lg">
										<div class="m-b-xs">
											<a ref="post.jsp?postid=${post.postId }" class="h4">${recruit.name}</a>
											<span class="text-muted m-l-sm pull-right">联系方式：
												${recruit.contact} </span>
										</div>
										<div class="m-b">
											<div>${recruit.intro}</div>
											<div class="m-t-sm">
												<a href class="text-muted m-xs"><i
													class="icon-action-redo"></i></a> <a href
													class="text-muted m-xs"><i class="icon-star"></i></a> <a
													href class="text-muted m-xs"><i class="icon-refresh"></i>
													13</a>
											</div>
										</div>
									</div>
									<hr>
									<!--小组信息-->
								</c:forEach>


							</div>
						</div>
					</div>

					<!--右侧人物风云榜-->
					<div class="col w-lg bg-light lter b-l bg-auto">
						<div class="wrapper">
							<div class="">
								<i class="glyphicon glyphicon-flag well-lg text-success"></i> <span
									class="m-t-xs m-b-xs STYLE2">人物风云榜Top10</span>
								<div style="height: 180px; overflow-y: auto; overflow-x: hidden">
									<ul class="list-group no-bg no-borders pull-in">
										<c:forEach items="${requestScope.userl }" var="user">
											<!--人物名片-->
											<li class="list-group-item"><a herf
												class="pull-left thumb-sm avatar m-r"> <!--头像--> <img
													src="img/a4.jpg" alt="..." class="img-circle"> <!--/头像-->
													<!--状态 在线--> <i class="on b-white bottom"></i> <!--/状态 在线-->
											</a>
												<div class="clear">
													<div>
														<a href>${user.name }</a> <i
															class="glyphicon glyphicon-heart-empty text-danger"></i>
														<span class="">${user.score }</span>
													</div>
													<small class="text-muted">${user.district }</small>
												</div></li>
											<!--/人物名片-->
										</c:forEach>
									</ul>
								</div>
							</div>
							<!--人物风云榜-->
							<hr>
							<!--平台资讯-->
							<div class="panel b-a">

								<i class="glyphicon glyphicon-globe well-lg text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE3">平台资讯</span>

								</li>
								<li class="line dk"></li> <i
									class="glyphicon glyphicon-calendar icon text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE4">公告</span><br> <small
									class="m-2 STYLE6"> <marquee direction="up"
										behavior="scroll" width="auto" height="180px"
										onMouseOver="this.stop()" onMouseOut="this.start()"
										scrollamoun="5">
										南开大学是国家教育部直属重点综合性大学，是敬爱的周恩来总理的母校。南开大学由严修、张伯苓秉承教育救国理念创办，肇始于1904年，成立于1919年。1937年校园遭侵华日军炸毁，学校南迁，1938年与北京大学、清华大学合组西南联合大学，被誉为“学府北辰”。1946年回津复校并改为国立。新中国成立后，经历高等教育院系调整，成为文理并重的全国重点大学。改革开放以来，天津对外贸易学院、中国旅游管理干部学院相继并入，经教育部与天津市共建支持，学校发展成为国家“211工程”和“985工程”重点建设的综合性研究型大学。南开大学坚持“允公允能，日新月异”的校训，弘扬“爱国、敬业、创新、乐群”的传统和“文以治国、理以强国、商以富国”的理念，以“知中国，服务中国”为宗旨，以杰出校友周恩来为楷模，作育英才，繁荣学术，强国兴邦，传承文明，努力建设世界一流大学。
									</marquee></small>

								<li class="line dk hidden-folded"></li> <i
									class="glyphicon glyphicon-stats icon text-success-dker"></i> <span
									class="m-t-xs m-b-xs STYLE4">新闻</span> <small
									class="m-2 STYLE6"> <marquee direction="up"
										behavior="scroll" width="auto" height="180px"
										onMouseOver="this.stop()" onMouseOut="this.start()"
										scrollamoun="5">
										5月10日，南开咨询俱乐部(NAC)启动大会暨咨询名企校友沙龙在经济学院高层一楼报告厅举行，活动旨在向全校同学介绍咨询行业、传播咨询知识、分享职业经验、助力实习招聘。活动邀请了近十位国际国内知名咨询行业校友来到活动现场，吸引了全校对咨询行业感兴趣百余名同学参与。经济学院党委副书记、副院长高琪，社团指导教师、经济学院经济研究所副教授薄文广出席。
									</marquee>
								</small>

								</ul>
							</div>
							<!--平台资讯-->
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
			&copy; 2015 Copyright comeco
		</div>
		<!-- / footer -->
	</div>
	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/jquery/bootstrap.js"></script>
	<script type="text/javascript">
		+function($) {
			$(function() {
				// class
				$(document)
						.on(
								'click',
								'[data-toggle^="class"]',
								function(e) {
									e && e.preventDefault();
									console.log('abc');
									var $this = $(e.target), $class, $target, $tmp, $classes, $targets;
									!$this.data('toggle')
											&& ($this = $this
													.closest('[data-toggle^="class"]'));
									$class = $this.data()['toggle'];
									$target = $this.data('target')
											|| $this.attr('href');
									$class && ($tmp = $class.split(':')[1])
											&& ($classes = $tmp.split(','));
									$target && ($targets = $target.split(','));
									$classes
											&& $classes.length
											&& $
													.each(
															$targets,
															function(index,
																	value) {
																if ($classes[index]
																		.indexOf('*') !== -1) {
																	var patt = new RegExp(
																			'\\s'
																					+ $classes[index]
																							.replace(
																									/\*/g,
																									'[A-Za-z0-9-_]+')
																							.split(
																									' ')
																							.join(
																									'\\s|\\s')
																					+ '\\s',
																			'g');
																	$($this)
																			.each(
																					function(
																							i,
																							it) {
																						var cn = ' '
																								+ it.className
																								+ ' ';
																						while (patt
																								.test(cn)) {
																							cn = cn
																									.replace(
																											patt,
																											' ');
																						}
																						it.className = $
																								.trim(cn);
																					});
																}
																($targets[index] != '#')
																		&& $(
																				$targets[index])
																				.toggleClass(
																						$classes[index])
																		|| $this
																				.toggleClass($classes[index]);
															});
									$this.toggleClass('active');
								});

				// collapse nav
				$(document).on(
						'click',
						'nav a',
						function(e) {
							var $this = $(e.target), $active;
							$this.is('a') || ($this = $this.closest('a'));

							$active = $this.parent().siblings(".active");
							$active
									&& $active.toggleClass('active').find(
											'> ul:visible').slideUp(200);

							($this.parent().hasClass('active') && $this.next()
									.slideUp(200))
									|| $this.next().slideDown(200);
							$this.parent().toggleClass('active');

							$this.next().is('ul') && e.preventDefault();

							setTimeout(function() {
								$(document).trigger('updateNav');
							}, 300);
						});
			});
		}(jQuery);
	</script>
</body>
</html>