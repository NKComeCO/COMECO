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
<title>Search Results</title>
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
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
	
	<div class="app app-header-fixed" id="app">
		<!-- å¯¼èªæ  -->
		<div class="app-header navbar">
			<!-- å¯¼èªæ -header -->
			<div class="navbar-header bg-dark">
				<!-- æ²¡å¼æè¿ä¸é¨åbuttonæ¯å¹²åç-->
				<button class="pull-right visible-xs dk" data-toggle="class:show"
					data-target=".navbar-collapse">
					<i class="glyphicon glyphicon-cog"></i>
				</button>
				<button class="pull-right visible-xs" data-toggle="class:off-screen"
					data-target=".app-aside" ui-scroll="app">
					<i class="glyphicon glyphicon-align-justify"></i>
				</button>
				<!-- /æ²¡å¼æè¿ä¸é¨åbuttonæ¯å¹²åç-->
				<!-- å¯¼èªæ å·¦ä¾§ logo comeco -->
				<a href="#/" class="navbar-brand text-lt"> <i class="STYLE00">comeco</i>
				</a>
				<!-- / logo cocome-->
			</div>
			<!-- / å¯¼èªæ -header -->

			<!-- ä¸­é´ç½è²é¨åçå¯¼èªæ  -->
			<div
				class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
				<!-- å·¦ä¾§å¯¼èªç¼©è¿&ä¸ªäººä¿¡æ¯å¾æ -->
				<div class="nav navbar-nav hidden-xs">
					<!-- å·¦ä¾§å¯¼èªç¼©è¿å¾æ -->
					<a href="#" class="btn no-shadow navbar-btn"
						data-toggle="class:app-aside-folded" data-target=".app"> <i
						class="fa fa-dedent fa-fw text"></i> <i
						class="fa fa-indent fa-fw text-active"></i>
					</a>
					<!--/å·¦ä¾§å¯¼èªç¼©è¿å¾æ -->
				</div>
				<!-- / å·¦ä¾§å¯¼èªç¼©è¿&ä¸ªäººä¿¡æ¯å¾æ  -->

				<!--ä¸æèåä»¥åé¾æ¥-->
				<ul class="nav navbar-nav hidden-sm">
					<!--Mega-->
					<li class="dropdown pos-stc"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"> <span
							class="m-t-xs m-b-xs STYLE5">æç´¢éé¡¹</span> <span
							class="caret"></span>
					</a>
						<div class="dropdown-menu wrapper w-full bg-white">
							<div class="row">
								<div class="col-sm-4">
									<!--é¡¹ç®çéé¡¹-->
									<div class="m-l-xs m-t-xs m-b-xs font-bold">
										<i class="icon-docs"></i> æé¡¹ç®æç´¢
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
								<!--/é¡¹ç®çéé¡¹-->

								<!--æåçéé¡¹-->
								<div class="col-sm-4 b-l b-light">
									<div class="m-l-xs m-t-xs m-b-xs font-bold">
										<i class="icon-graduation"></i> ææåæç´¢
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
								<!--æåçéé¡¹-->
								<!--Analysisçéé¡¹-->
								<div class="col-sm-4 b-l b-light">
									<div class="m-l-xs m-t-xs m-b-sm font-bold">
										<i class="icon-eyeglasses"></i> ææèæç´¢
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
								<!--/Analysisçéé¡¹-->
							</div>
						</div></li>
					<!--/æç´¢éé¡¹-->
				</ul>
				<!--ä¸æèåä»¥åé¾æ¥-->

				<!-- æç´¢æ¡-->
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
				<!-- / æç´¢æ¡ -->

				<!-- å¯¼èªæ å³ä¾§ -->
				<ul class="nav navbar-nav navbar-right">

					<!--ä¸ªäººä¿¡æ¯åè¡¨-->
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle clear" data-toggle="dropdown"> <span
							class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
								<img src="img/a0.jpg" alt="..."> <i
								class="on md b-white bottom"></i>
						</span> <span class="hidden-sm hidden-md">John.Smith</span> <b
							class="caret"></b>
					</a> <!-- ä¸æä¸ªäººä¿¡æ¯-->
						<ul class="dropdown-menu animated fadeInRight w">
							<li><a href="personaldetails.html"> <i
									class="icon-user icon text-success-lter"></i> <span>ä¸ªäººä¿¡æ¯</span>
							</a></li>
							<li><a href="mygroups.html"> <i
									class="glyphicon icon-bubbles text-success"></i> <span>æçå°ç»</span>
							</a></li>

							<li class="divider"></li>
							<li><a href=""> <i
									class="glyphicon glyphicon-log-out text-success"></i> <span>éåºç»å½</span>
							</a></li>
						</ul> <!-- / ä¸æä¸ªäººä¿¡æ¯ --></li>
					<!--ä¸ªäººæ¶æ¯åè¡¨-->
				</ul>
				<!-- / å¯¼èªæ å³ä¾§-->
			</div>
			<!-- / ä¸­é´ç½è²é¨åçå¯¼èªæ  -->
		</div>
		<!-- / å¯¼èªæ -->

		<!-- å·¦ä¾§èåæ -->
		<div class="app-aside hidden-xs bg-dark">
			<div class="aside-wrap">
				<div class="navi-wrap">
					<!-- å·¦ä¾§ é¡¹ç®ç±»å« -->
					<nav ui-nav class="navi">
						<ul class="nav">
							<!--é¡¹ç®ç±»å«-->

							<i class="glyphicon glyphicon-list well-lg text-success-dk"></i>
							<span class=" hidden-folded padder m-t-xs m-b-xs STYLE8">é¡¹ç®åç±»</span>
							<nav ui-nav class="navi">
								<ul class="nav">
									<ul class="list-group">

										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">çµå­ç±»</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">çµå­ç±»</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦ççµå­è®¾è®¡ç«èµ</span>
												</a></li>
											</ul></li>

										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">æ°å­¦ç±»</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">æ°å­¦ç±»</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦çæ°å­¦å»ºæ¨¡ç«èµï¼æ¬ç§ï¼</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½ç ç©¶çæ°å­¦å»ºæ¨¡ç«èµï¼ç ç©¶çï¼</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>ç¾å½å¤§å­¦çæ°å­¦å»ºæ¨¡ç«èµï¼å½éèµï¼</span>
												</a></li>

											</ul>
										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">ç¯å¢ç±»</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">ç¯å¢ç±»</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦çèè½åæç¤¾ä¼å®è·µä¸ç§æç«èµ</span>
												</a></li>
											</ul></li>


										<li><a href class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-fw fa-angle-right text"></i> <i
													class="fa fa-fw fa-angle-down text-active"></i>
											</span> <span class="font-bold" translate="aside.nav.DASHBOARD">åä¸ç±»</span>
										</a>
											<ul class="nav nav-sub dk">
												<li class="nav-sub-header"><a href> <span
														translate="aside.nav.DASHBOARD">åä¸ç±»</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦çâæææ¯âåä¸å¤§èµ</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦ççµå­åå¡ç«èµ</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦çè¥éå¤§èµ</span>
												</a></li>
												<li ui-sref-active="active"><a href> <span>å¨å½å¤§å­¦çERPæ²çæ¯èµ</span>
												</a></li>
											</ul></li>
										<li ui-sref-active="active"><a href> <span
												class="font-bold" translate="aside.nav.CALENDAR">å¶ä»ç±»</span>
										</a></li>
									</ul>
								</ul>

								<!--é¡¹ç®ç±»å«-->
							</nav>
							<!-- / å·¦ä¾§ é¡¹ç®ç±»å« -->
				</div>
			</div>
		</div>
		<!-- / å·¦ä¾§èåæ  -->

		<!-- å³ä¾§ç½è²é¨ååå®¹ -->
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
												<span class="h3 text-black">John.Smith</span> <small
													class="m-l">å¤©æ´¥ï¼åå¼</small>
											</div>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="pull-right pull-none-xs text-center">
											<a href class="m-b-md inline m"> <span
												class="h3 block font-bold">100</span> <i
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
								<span class="m-l-xs m-t-xs m-b-xs font-bold STYLE7">æç´¢ç»æ</span>

							</ul>
						</div>

						<br>
						<!--æç´¢ç»ææ¾ç¤º-->
						<ul>
							<ul>
								<ul class="nav nav-pills nav-sm">

									<!--exmp1--->
									<li>
										<div class="panel b-light clearfix">
											<div class="panel-body">
												<a href="" class="thumb pull-left m-r"> <img
													src="img/slide1.jpg" class="img-circle">
												</a>
												<div class="clear">
													<a href class="text-info">@éä¼åç§° <i
														class="fa fa-twitter"></i></a> <small class="block text-muted">éé¿åå­</small>
													<small class="block text-muted">éä¼ç±»å</small> <small
														class="block text-muted">æåäººæ°</small> <a href
														class="btn btn-xs btn-success m-t-xs">ç¹å»æ¥ç</a>
												</div>
											</div>
										</div>
									</li>
									<!--/exmp1--->

									<!--exmp2--->
									<li>
										<div class="panel b-light clearfix">
											<div class="panel-body">
												<a href="" class="thumb pull-left m-r"> <img
													src="img/slide1.jpg" class="img-circle">
												</a>
												<div class="clear">
													<a href class="text-info">@éä¼åç§° <i
														class="fa fa-twitter"></i></a> <small class="block text-muted">éé¿åå­</small>
													<small class="block text-muted">éä¼ç±»å</small> <small
														class="block text-muted">æåäººæ°</small> <a href
														class="btn btn-xs btn-success m-t-xs">ç¹å»æ¥ç</a>
												</div>
											</div>
										</div>
									</li>
									<!--/exmp2--->

									<!--exmp3--->
									<li>
										<div class="panel b-light clearfix">
											<div class="panel-body">
												<a href="" class="thumb pull-left m-r"> <img
													src="img/slide1.jpg" class="img-circle">
												</a>
												<div class="clear">
													<a href class="text-info">@éä¼åç§° <i
														class="fa fa-twitter"></i></a> <small class="block text-muted">éé¿åå­</small>
													<small class="block text-muted">éä¼ç±»å</small> <small
														class="block text-muted">æåäººæ°</small> <a href
														class="btn btn-xs btn-success m-t-xs">ç¹å»æ¥ç</a>
												</div>
											</div>
										</div>
									</li>
									<!--/exmp3--->

									<!--exmp4--->
									<li>
										<div class="panel b-light clearfix">
											<div class="panel-body">
												<a href="" class="thumb pull-left m-r"> <img
													src="img/slide1.jpg" class="img-circle">
												</a>
												<div class="clear">
													<a href class="text-info">@éä¼åç§° <i
														class="fa fa-twitter"></i></a> <small class="block text-muted">éé¿åå­</small>
													<small class="block text-muted">éä¼ç±»å</small> <small
														class="block text-muted">æåäººæ°</small> <a href
														class="btn btn-xs btn-success m-t-xs">ç¹å»æ¥ç</a>
												</div>
											</div>
										</div>
									</li>
									<!--/exmp4--->

									<!--exmp5--->
									<li>
										<div class="panel b-light clearfix">
											<div class="panel-body">
												<a href="" class="thumb pull-left m-r"> <img
													src="img/slide1.jpg" class="img-circle">
												</a>
												<div class="clear">
													<a href class="text-info">@éä¼åç§° <i
														class="fa fa-twitter"></i></a> <small class="block text-muted">éé¿åå­</small>
													<small class="block text-muted">éä¼ç±»å</small> <small
														class="block text-muted">æåäººæ°</small> <a href
														class="btn btn-xs btn-success m-t-xs">ç¹å»æ¥ç</a>
												</div>
											</div>
										</div>
									</li>
									<!--/exmp5--->

								</ul>
							</ul>
						</ul>
					</div>

					<!--æç´¢ç»ææ¾ç¤º-->

					<!--å³ä¾§äººç©é£äºæ¦-->
					<div class="col w-lg bg-light lter b-l bg-auto">
						<div class="wrapper">
							<div class="">
								<i class="glyphicon glyphicon-flag well-lg text-success"></i> <span
									class="m-t-xs m-b-xs STYLE2">äººç©é£äºæ¦Top10</span>
								<div style="height: 180px; overflow-y: auto; overflow-x: hidden">
									<ul class="list-group no-bg no-borders pull-in">
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <!--å¤´å--> <img
												src="img/a4.jpg" alt="..." class="img-rounded"> <!--/å¤´å-->
												<!--ç¶æ å¨çº¿--> <i class="on b-white bottom"></i> <!--/ç¶æ å¨çº¿-->
										</a>
											<div class="clear">
												<div>
													<a href>Chris Fox</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small>
											</div></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a5.jpg" alt="..." class="img-rounded"> <i
												class="on b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Mogen Polish</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a6.jpg" alt="..." class="img-rounded"> <i
												class="busy b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Joge Lucky</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
										<!--äººç©åç-->
										<li class="list-group-item"><a herf
											class="pull-left thumb-sm avatar m-r"> <img
												src="img/a7.jpg" alt="..." class="img-rounded"> <i
												class="away b-white bottom"></i>
										</a>
											<div class="clear">
												<div>
													<a href>Folisise Chosielie</a> <i
														class="glyphicon glyphicon-heart-empty text-danger"></i> <span
														class="">300</span>
												</div>
												<small class="text-muted">äººç©æ ç­¾</small></li>
										<!--/äººç©åç-->
									</ul>
								</div>
							</div>
							<!--äººç©é£äºæ¦-->
							<hr>
							<!--å¹³å°èµè®¯-->
							<div class="panel b-a">
								<i class="glyphicon glyphicon-globe well-lg text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE3">å¹³å°èµè®¯</span>

								</li>
								<li class="line dk"></li> <i
									class="glyphicon glyphicon-calendar icon text-success-dker"></i>
								<span class="m-t-xs m-b-xs STYLE4">å¬å</span><br> <small
									class="m-2 STYLE6"> <marquee direction="up"
										behavior="scroll" width="auto" height="180px"
										onMouseOver="this.stop()" onMouseOut="this.start()"
										scrollamoun="5">
										åå¼å¤§å­¦æ¯å½å®¶æè²é¨ç´å±éç¹ç»¼åæ§å¤§å­¦ï¼æ¯æ¬ç±çå¨æ©æ¥æ»ççæ¯æ ¡ãåå¼å¤§å­¦ç±ä¸¥ä¿®ãå¼ ä¼¯èç§æ¿æè²æå½çå¿µååï¼èå§äº1904å¹´ï¼æç«äº1919å¹´ã1937å¹´æ ¡å­é­ä¾µåæ¥åç¸æ¯ï¼å­¦æ ¡åè¿ï¼1938å¹´ä¸åäº¬å¤§å­¦ãæ¸åå¤§å­¦åç»è¥¿åèåå¤§å­¦ï¼è¢«èªä¸ºâå­¦åºåè¾°âã1946å¹´åæ´¥å¤æ ¡å¹¶æ¹ä¸ºå½ç«ãæ°ä¸­å½æç«åï¼ç»åé«ç­æè²é¢ç³»è°æ´ï¼æä¸ºæçå¹¶éçå¨å½éç¹å¤§å­¦ãæ¹é©å¼æ¾ä»¥æ¥ï¼å¤©æ´¥å¯¹å¤è´¸æå­¦é¢ãä¸­å½ææ¸¸ç®¡çå¹²é¨å­¦é¢ç¸ç»§å¹¶å¥ï¼ç»æè²é¨ä¸å¤©æ´¥å¸å±å»ºæ¯æï¼å­¦æ ¡åå±æä¸ºå½å®¶â211å·¥ç¨âåâ985å·¥ç¨âéç¹å»ºè®¾çç»¼åæ§ç ç©¶åå¤§å­¦ãåå¼å¤§å­¦åæâåå¬åè½ï¼æ¥æ°æå¼âçæ ¡è®­ï¼å¼æ¬âç±å½ãæ¬ä¸ãåæ°ãä¹ç¾¤âçä¼ ç»åâæä»¥æ²»å½ãçä»¥å¼ºå½ãåä»¥å¯å½âççå¿µï¼ä»¥âç¥ä¸­å½ï¼æå¡ä¸­å½âä¸ºå®æ¨ï¼ä»¥æ°åºæ ¡åå¨æ©æ¥ä¸ºæ¥·æ¨¡ï¼ä½è²è±æï¼ç¹è£å­¦æ¯ï¼å¼ºå½å´é¦ï¼ä¼ æ¿ææï¼åªåå»ºè®¾ä¸çä¸æµå¤§å­¦ã
									</marquee></small>

								<li class="line dk hidden-folded"></li> <i
									class="glyphicon glyphicon-stats icon text-success-dker"></i> <span
									class="m-t-xs m-b-xs STYLE4">æ°é»</span> <small
									class="m-2 STYLE6"> <marquee direction="up"
										behavior="scroll" width="auto" height="180px"
										onMouseOver="this.stop()" onMouseOut="this.start()"
										scrollamoun="5">
										5æ10æ¥ï¼åå¼å¨è¯¢ä¿±ä¹é¨(NAC)å¯å¨å¤§ä¼æ¨å¨è¯¢åä¼æ ¡åæ²é¾å¨ç»æµå­¦é¢é«å±ä¸æ¥¼æ¥ååä¸¾è¡ï¼æ´»å¨æ¨å¨åå¨æ ¡åå­¦ä»ç»å¨è¯¢è¡ä¸ãä¼ æ­å¨è¯¢ç¥è¯ãåäº«èä¸ç»éªãå©åå®ä¹ æèãæ´»å¨éè¯·äºè¿åä½å½éå½åç¥åå¨è¯¢è¡ä¸æ ¡åæ¥å°æ´»å¨ç°åºï¼å¸å¼äºå¨æ ¡å¯¹å¨è¯¢è¡ä¸æå´è¶£ç¾ä½ååå­¦åä¸ãç»æµå­¦é¢åå§å¯ä¹¦è®°ãå¯é¢é¿é«çªï¼ç¤¾å¢æå¯¼æå¸ãç»æµå­¦é¢ç»æµç ç©¶æå¯ææèæå¹¿åºå¸­ã
									</marquee></small>

								</ul>
							</div>
							<!--å¹³å°èµè®¯-->
						</div>
					</div>
				</div>
				<!-- PASTE above -->
			</div>
		</div>
		<!-- /å³ä¾§ç½è²åå®¹ -->

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
	<script type="text/javascript">
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
          });
        }(jQuery);
      </script>
</body>
</html>