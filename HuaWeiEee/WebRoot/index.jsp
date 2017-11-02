<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/index.css">
	</head>
	<body>

		<div class="top-frame">	
			<div class="top-banner">
				<a href="https://mm.vmall.com/cw7x.html">
					<img title="7x" src="${pageContext.request.contextPath }/img/index/top-banner.jpg">
				</a>
				<a title="关闭" class="btn-close"></a>
			</div>
		</div>

		<div class="shortcut-frame">
			<div class="shortcut">
				<div class="sc-sub">
					<ul>
						<li class="first-child">
							<a href="http://consumer.huawei.com/cn/" target="_blank">华为官网</a>
						</li>
						<li>
							<a href="http://www.honor.cn/" target="_blank">荣耀官网</a>
						</li>
						<li>
							<a href="http://club.huawei.com" target="_blank">花粉俱乐部</a>
						</li>
						<li>
							<a href="https://www.vmall.com/help/index.html">帮助中心</a>
						</li>
						<li>
							<a href="https://www.vmall.com/priority">V码(优购码)</a>
						</li>
						<li>
							<a>Select Region</a>
						</li>
						<li>
							<div class="s-dropdown">
								<div class="dropdown-head">
									<a class="dropdown-icon">更多精彩</a>
								</div>
								<div class="dropdown-body">
									<dl>
										<dt>
											<a href="http://emui.huawei.com/cn/" target="_blank">EMUI</a>
										</dt>
										<dt>
											<a href="http://appstore.huawei.com/" target="_blank">应用市场</a>
										</dt>
										<dt>
											<a href="http://cloud.huawei.com" target="_blank">云服务</a>
										</dt>
										<dt>
											<a href="http://developer.huawei.com/" target="_blank">开发者联盟</a>
										</dt>
									</dl>
									<div class="code">
										<a href="https://www.vmall.com/appdownload" target="_blank">
											<img src="${pageContext.request.contextPath }/img/index/qrcode_vmall_new_app01.png">
										</a>
										<p>
											扫一扫，
											<a href="https://www.vmall.com/appdownload" target="_blank">下载客户端</a>
										</p>
									</div>
								</div>
							</div>
							<a></a>
						</li>
					</ul>
				</div>
				<div class="sc-main">
					<ul>
						<li class="first-child" id="unlogin-status">
							<div class="i-login">
								<a id="btn-login">请登录</a>
								&nbsp;&nbsp;
								<a id="btn-register">注册</a>
							</div>
						</li>
						<li class="first-child" id="login-status">
						</li>
						<li>
							<a href="https://www.vmall.com/member/order?t=15079706783831507970860468">我的订单</a>
						</li>
						<li>
							<div class="s-dropdown">
								<div class="dropdown-head h-wide" id="minicart-head">
									<a href="" class="icon-minicart">
										<span>
											购物车(<span id="minicart-head-total">0</span>)
										</span>
									</a>
								</div>
								<div class="minicart-dropdown">
									<div id="minicart-dropdown">
										<div class="minicart-empty" id="cart-empty">
											<p>
												<span class="icon-minicart"></span>
											</p>
											<p>您的购物车是空的，赶紧选购吧</p>
											<a href="">去逛逛吧</a>
										</div>
										<div class="minicart-content hide" id="cart-list">
										</div>
									</div>
								</div>
							</div>

						</li>
					</ul>
				</div>
				<span class="clear"></span>
			</div>
		</div>

		<div class="header-frame">
			<div class="header">
				<div class="left">
					<div class="logo">
						<a href="https://www.vmall.com/" title="Vmall.com - 华为商城">
							<img src="${pageContext.request.contextPath }/img/index/logo20170801113951.png" alt="Vmall.com - 华为商城">
						</a>
					</div>
					<div class="nav">
						<ul>
							<li>
								<a href="https://www.vmall.com/list-36" target="_blank">
									<span>华为专区</span>
								</a>
							</li>
							<li>
								<a href="https://www.vmall.com/list-40" target="_blank">
									<span>荣耀专区</span>
								</a>
							</li>
							<li>
								<a href="https://www.vmall.com/list-59" target="_blank">
									<span>HUAWEI Mate10</span>
								</a>
							</li>
							<li>
								<a href="https://www.vmall.com/list-43" target="_blank">
									<span>荣耀畅玩7X</span>
								</a>
							</li>
							<li>
								<a href="https://www.vmall.com/list-54" target="_blank">
									<span>麦芒6</span>
								</a>
							</li>
							<li>
								<a href="https://www.vmall.com/list-47" target="_blank">
									<span>荣耀双11</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="right">
					<div class="search-bar">
						<div class="search-bar-form">
							<form method="get">
								<input type="text" class="text" maxlength="100" id="search-kw" name="">
								<input type="submit" name="" class="button" value="搜索">
							</form>
						</div>
						<div class="search-bar-key">
							<div class="bar-keyword">
								<a href="" target="_blank">HUAWEI Mate 10</a>
								<a href="" target="_blank">荣耀8青春版</a>
							</div>
						</div>
					</div>
				</div>
				<span class="clear"></span>
			</div>
		</div>
		
		<div class="hot-board">
			<div class="slider" id="index-slider">
				<ul>
					<li class="banner-item" id="firstImg">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171017213917211.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171015210209719.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/2017101622484950.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171015210234372.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171017213922589.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171017213952603.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20171017214016712.jpg">
					</li>
					<li class="banner-item">
						<a href=""></a>
						<img src="${pageContext.request.contextPath }/img/index/20170926195821472.jpg">
					</li>
				</ul>
				<div class="slider-nav">
					<span class="current"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
				</div>
			</div>
			<div class="category-frame">
				<div class="b">
					<ul class="category-list">
						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>手机</span>
									</a>
								</h3>
								<a href="">
									<span>荣耀</span>
								</a>
								<a href="">
									<span>HUAWEI P系列</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览手机频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>荣耀</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI P系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>畅玩</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI Mate系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI Nova系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI 麦芒系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>华为畅享系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>合约机</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>笔记本 & 平板</span>
									</a>
								</h3>
								<a href="">
									<span>平板电脑</span>
								</a>
								<a href="">
									<span>笔记本电脑</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览笔记本 & 平板频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>平板电脑</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>笔记本电脑</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>笔记本配件</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>穿戴</span>
									</a>
								</h3>
								<a href="">
									<span>手环</span>
								</a>
								<a href="">
									<span>手表</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览穿戴频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>手环</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>手表</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>智能家居</span>
									</a>
								</h3>
								<a href="">
									<span>子母路由</span>
								</a>
								<a href="">
									<span>电视盒子</span>
								</a>
								<a href="">
									<span>路由器</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览智能家居频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>子母路由</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>电视盒子</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>路由器</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>电力猫</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>随行wifi</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI HiLink生态产品</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>通用配件</span>
									</a>
								</h3>
								<a href="">
									<span>移动电源</span>
								</a>
								<a href="">
									<span>耳机</span>
								</a>
								<a href="">
									<span>音箱</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览通用配件频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>移动电源</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>耳机</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>音箱</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>自拍杆/支架</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>充电器/线材</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>HUAWEI 麦芒系列</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>U盘/存储卡</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>排插</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>摄像机/镜头</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>智能硬件</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>生活周边</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

						<li class="category-item">
							<div class="category-info">
								<h3>	
									<a href="">
										<span>专属配件</span>
									</a>
								</h3>
								<a href="">
									<span>保护壳</span>
								</a>
								<a href="">
									<span>保护套</span>
								</a>
								<a href="">
									<span>贴膜</span>
								</a>
								<i class="item-arrow"></i>
							</div>
							<div class="category-panels">
								<div class="p-title">
									<a href="">
										<span class="left">浏览专属配件频道</span>
										<span class="right btn-next">></span>
									</a>
								</div>
								<ul class="subcate-list">
									<li class="subcate-item">
										<a href="">
											<span>保护壳</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>保护套</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>贴膜</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>盒子专属配件</span>
										</a>
									</li>
									<li class="subcate-item">
										<a href="">
											<span>表带</span>
										</a>
									</li>
									<span class="clear"></span>
								</ul>
								<ul class="p-pro">
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
									<li class="grid-items">
										<a class="thumb" href="">
											<p class="grid-img">
												<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
											</p>
											<h3 class="grid-title">HUAWEI P10</h3>
											<p class="grid-price">￥3988</p>
										</a>
									</li>
								</ul>
							</div>
						</li>

					</ul>
				</div>
			</div>
		</div>
		
		<div class="home-channel-frame">
			<div class="home-channel">
				<div class="channel-head">
					<ul class="channel-list">
						<li class="left s1">
							<div id="gg_login" class="mall-prompt hide">
							</div>
							<div id="gg_unlogin" class="mall-prompt">
								<div class="left w-name">
									<img src="${pageContext.request.contextPath }/img/index/img_not_logged_in.png">
								</div>
								<div class="left unlogin-area">
									<div class="w-reg">
										欢迎来到华为商城，请&nbsp;
										<a href="" target="_blank">登录</a>
										<br>
										还没账号？&nbsp;
										<a href="" target="_blank">注册</a>
										&nbsp;即可享受&nbsp;&nbsp;&nbsp;>
									</div>
									<div class="w-btn">
										<a class="" href="" target="_blank">新人福利</a>
										<a class="">会员频道</a>
									</div>
								</div>
							</div>
						</li>
						<li class="left s2">
							<ul>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img0" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="优选配件">
										</div>
										<div class="p-dec">优选配件</div>
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img1" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="手机充值">
										</div>
										<div class="p-dec">手机充值</div>
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img2" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="会员领券">
										</div>
										<div class="p-dec">会员领券</div>
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img3" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="个性定制">
										</div>
										<div class="p-dec">个性定制</div>
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img4" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="以旧换新">
										</div>
										<div class="p-dec">以旧换新</div>
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<div class="p-img">
											<img class="img5" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="数码特惠">
										</div>
										<div class="p-dec">数码特惠</div>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</li>
						<li class="left s3">
							<div class="p-notice">
								<div class="notice-icon left">
									<a href="" title="商城公告">
										<span></span>
									</a>
								</div>
								<div class="notice-content" id="notice">
									<ul class="notice-list left">
										<li>
											<a href="" target="_blank">荣耀9购机用户开通华为音乐会员反花币</a>
										</li>
										<li>
											<a href="" target="_blank">HUAWEI Mate 10发布会招募中奖用户公示名单</a>
										</li>
										<li>
											<a href="" target="_blank">荣耀畅玩7X 购机抽奖/评价有礼</a>
										</li>
										<li>
											<a href="" target="_blank">华为金秋拾惠</a>
										</li>
										<li>
											<a href="" target="_blank">荣耀11.11 别挑了，选我！（第一波）</a>
										</li>
										<li>
											<a href="" target="_blank">荣耀9购机用户开通华为音乐会员反花币</a>
										</li>
									</ul>
								</div>
								<span class="clear"></span>
							</div>
							<div class="p-info">
								<ul>
									<li>
										<a href="">
											<span>
												<img class="img0" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="实名认证">
											</span>
											实名认证
										</a>
									</li>
									<li>
										<a href="">
											<span>
												<img class="img1" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="芝麻信用">
											</span>
											芝麻信用
										</a>
									</li>
									<li>
										<a href="">
											<span>
												<img class="img2" src="${pageContext.request.contextPath }/img/index/b4e266806f053505b9d501940ef097bb.png" alt="优购码">
											</span>
											优购码
										</a>
									</li>
									<span class="clear"></span>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<ul class="channel-body">
					<li class="">
						<a href="">
							<img src="${pageContext.request.contextPath }/img/index/20171015205941791.png">
						</a>
					</li>
					<li class="">
						<a href="">
							<img src="${pageContext.request.contextPath }/img/index/20171012203528307.png">
						</a>
					</li>
					<li class="">
						<a href="">
							<img src="${pageContext.request.contextPath }/img/index/20171017115326271.png">
						</a>
					</li>
					<li class="">
						<a href="">
							<img src="${pageContext.request.contextPath }/img/index/20171022125613147.png">
						</a>
					</li>
					<span class="clear"></span>
				</ul>
			</div>
		</div>
		
		<div class="hotsell-frame">
			<div class="hotsell">
				<div class="h">
					<h2 class="title">热销单品</h2>
				</div>
				<div class="b">
					<div class="left span-232">
						<ul class="grid-promo-list">
							<li class="grid-items grid-items-sm">
								<a class="thumb" href="" target="_blank">
									<img src="${pageContext.request.contextPath }/img/index/1507685886492.jpg">
								</a>
							</li>
						</ul>
					</div>
					<div class="span-968 left">
						<ul class="grid-list">
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<li class="grid-items">
								<a href="thumb" target="_blank">
									<p class="grid-img">
										<img src="${pageContext.request.contextPath }/img/index/428_428_1506588230127mp.jpg" alt="荣耀V9 全网通标配版 4GB+64GB(极光蓝)">
									</p>
									<h3 class="grid-title">荣耀V9</h3>
									<p class="grid-desc">赠保护壳+流量卡&nbsp;</p>
									<p class="grid-price">￥2599</p>
									<p class="grid-tips">
										<i class="remai"></i>
									</p>
								</a>
							</li>
							<span class="clear"></span>
						</ul>
					</div>
					<span class="clear"></span>
				</div>
			</div>
			<div class="recommend">
				<div class="h">
					<h2 class="title">精品推荐</h2>
				</div>
				<div class="scroll-box">
					<ul class="scroll-list">
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<span class="clear"></span>
					</ul>
					<div class="grid-btn btn-prev disabled">
						<span></span>
					</div>
					<div class="grid-btn btn-next able">
						<span></span>
					</div>
				</div>	
			</div>
			<div class="hotsell-banner">
				<div class="slider">
					<ul>
						<li class="banner-item" id="hs-firstImg">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/20170814171955164.jpg">
						</li>
						<li class="banner-item">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/2017100918173473.jpg">
						</li>
						<li class="banner-item">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/20170724094800671.png">
						</li>
						<li class="banner-item">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/20171009181738534.jpg">
						</li>
						<li class="banner-item">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/20171012155604528.jpg">
						</li>
						<li class="banner-item">
							<a href=""></a>
							<img src="${pageContext.request.contextPath }/img/index/20171018160539621.jpg">
						</li>
						<div class="slider-nav">
							<span class="current"></span><span></span><span></span><span></span><span></span><span></span>
						</div>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="main-part-frame">

			<div class="main-part" id="mobile">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">手机</h2>
						<ul class="part-nav left">
							<li>
								<a>荣耀</a>
							</li>
							<li>
								<a>HUAWEI P系列</a>
							</li>
							<li>
								<a>荣耀畅玩系列</a>
							</li>
							<li>
								<a>HUAWEI Mate系列</a>
							</li>
							<li>
								<a>HUAWEI nova系列</a>
							</li>
							<li>
								<a>HUAWEI 麦芒系列</a>
							</li>
							<li>
								<a>华为畅享系列</a>
							</li>
							<li>
								<a>合约机</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-md">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1504246272016.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="main-part" id="laptop">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">笔记本电脑</h2>
						<ul class="part-nav left">
							<li>
								<a>平板电脑</a>
							</li>
							<li>
								<a>笔记本电脑</a>
							</li>
							<li>
								<a>笔记本配件</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-md">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1504246272016.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="main-part" id="pad">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">精品平板</h2>
						<ul class="part-nav left">
							<li>
								<a>平板电脑</a>
							</li>
							<li>
								<a>笔记本电脑</a>
							</li>
							<li>
								<a>笔记本配件</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-md">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1504246272016.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="main-part" id="watch">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">穿戴</h2>
						<ul class="part-nav left">
							<li>
								<a>手环</a>
							</li>
							<li>
								<a>手表</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-md">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1504246272016.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="main-part" id="smartHome">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">智能家居</h2>
						<ul class="part-nav left">
							<li>
								<a>子母路由</a>
							</li>
							<li>
								<a>电视盒子</a>
							</li>
							<li>
								<a>路由器</a>
							</li>
							<li>
								<a>电力猫</a>
							</li>
							<li>
								<a>随行wifi</a>
							</li>
							<li>
								<a>HUAWEI HiLink生态产品</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-lg">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1508407501437.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
				<div class="scroll-box">
					<ul class="scroll-list">
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<span class="clear"></span>
					</ul>
					<div class="grid-btn btn-prev disabled">
						<span></span>
					</div>
					<div class="grid-btn btn-next able">
						<span></span>
					</div>
				</div>
			</div>

			<div class="main-part" id="hotsellpart">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">热销配件</h2>
						<ul class="part-nav left">
							<li>
								<a>移动电源</a>
							</li>
							<li>
								<a>耳机</a>
							</li>
							<li>
								<a>充电器/线材</a>
							</li>
							<li>
								<a>自拍杆/支架</a>
							</li>
							<li>
								<a>音箱</a>
							</li>
							<li>
								<a>U盘/存储卡</a>
							</li>
							<li>
								<a>排插</a>
							</li>
							<li>
								<a>摄像头/镜头</a>
							</li>
							<li>
								<a>智能硬件</a>
							</li>
							<li>
								<a>生活周边</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-lg">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1508407501437.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
				<div class="scroll-box">
					<ul class="scroll-list">
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<span class="clear"></span>
					</ul>
					<div class="grid-btn btn-prev disabled">
						<span></span>
					</div>
					<div class="grid-btn btn-next able">
						<span></span>
					</div>
				</div>
			</div>

			<div class="main-part" id="brandpart">
				<div class="part-content">
					<div class="h">
						<h2 class="part-title left">品牌配件</h2>
						<ul class="part-nav left">
							<li>
								<a>移动电源</a>
							</li>
							<li>
								<a>耳机</a>
							</li>
							<li>
								<a>充电器/线材</a>
							</li>
							<li>
								<a>自拍杆/支架</a>
							</li>
							<li>
								<a>音箱</a>
							</li>
							<li>
								<a>U盘/存储卡</a>
							</li>
							<li>
								<a>排插</a>
							</li>
							<li>
								<a>摄像头/镜头</a>
							</li>
							<li>
								<a>智能硬件</a>
							</li>
							<li>
								<a>生活周边</a>
							</li>
						</ul>
						<div class="part-more right">
							<a>更多></a>
						</div>
					</div>
					<div class="b">
						<div class="goods-list">	
							<ul class="grid-list">
								<li class="grid-items grid-items-lg">
									<a class="thumb">
										<img src="${pageContext.request.contextPath }/img/index/1508407501437.jpg">
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<li class="grid-items">
									<a class="thumb" href="">
										<p class="grid-img">
											<img src="${pageContext.request.contextPath }/img/index/142_142_1488120495681mp.jpg">
										</p>
										<h3 class="grid-title">荣耀畅玩6</h3>
										<p class="grid-desc">柔光自拍/长续航&nbsp;</p>
										<p class="grid-price">￥599</p>
										<p class="grid-tips">
											<i class="shoufa"></i>
										</p>
									</a>
								</li>
								<span class="clear"></span>
							</ul>
						</div>
					</div>
				</div>
				<div class="scroll-box">
					<ul class="scroll-list">
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<li class="grid-items">
							<a href="" class="thumb">
								<p class="grid-img">
									<img src="${pageContext.request.contextPath }/img/index/1508134741518.jpg" alt="">
								</p>
								<h3 class="grid-title">HUAWEI MateBook D</h3>
								<p class="grid-desc">最高直降600+赠品包&nbsp;</p>
								<p class="grid-price">￥5288</p>
								<p class="grid-tips">
									<i class="tehui"></i>
								</p>
							</a>
						</li>
						<span class="clear"></span>
					</ul>
					<div class="grid-btn btn-prev disabled">
						<span></span>
					</div>
					<div class="grid-btn btn-next able">
						<span></span>
					</div>
				</div>
			</div>
			
		</div>
			
		<div class="main-floor-frame">
			<div class="main-floor">
				<div class="ad">
					<a>
						<img src="${pageContext.request.contextPath }/img/index/20170313112742735.jpg">
					</a>
				</div>
			</div>
		</div>

		<div class="event-float">
			<div class="event-box">
				<ul class="hover-list">
						
					<li class="hover-list">
						<b></b>
						<a>手机</a>
					</li>
					
					<li class="hover-list">
						<b></b>	
						<a>笔记本电脑</a>
					</li>
					<li class="hover-list">
						<b></b>
						<a>精品平板</a>
					</li>
					<li class="hover-list">
						<b></b>
						<a>智能穿戴</a>
					</li>
					<li class="hover-list">
						<b></b>
						<a>智能家居</a>
					</li>
					<li class="hover-list">
						<b></b>
						<a>热销配件</a>
					</li>
					<li class="hover-list">
						<b></b>
						<a>品牌配件</a>
					</li>
				</ul>
			</div>	
		</div>

		<div class="slogan-frame">
			<div class="slogan">
				<ul>
					<li>
						<a target="_blank" href="">
							<i class="s1"></i>
							百强企业&nbsp;品质保证
						</a>
					</li>
					<li>
						<a target="_blank" href="">
							<i class="s2"></i>
							7天退货&nbsp;15天换货
						</a>
					</li>
					<li>
						<a target="_blank" href="">
							<i class="s3"></i>
							48元起免运费
						</a>
					</li>
					<li>
						<a target="_blank" href="">
							<i class="s4"></i>
							448家维修网点&nbsp;全国联保
						</a>
					</li>
					
				</ul>
			</div>
		</div>

		<div class="service-frame">
			<div class="service">
				<div class="service-left left">
					<dl class="s1">
						<dt>
							<p class="line"></p>
							<p class="title">购物相关</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">购物指南</a>
								</li>
								<li>
									<a target="_blank" href="">配送方式</a>
								</li>
								<li>
									<a target="_blank" href="">支付方式</a>
								</li>
								<li>
									<a target="_blank" href="">常见问题</a>
								</li>
							</ol>
						</dd>
					</dl>
					<dl class="s2">
						<dt>
							<p class="line"></p>
							<p class="title">保修与退换货</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">保修政策</a>
								</li>
								<li>
									<a target="_blank" href="">退换货政策</a>
								</li>
								<li>
									<a target="_blank" href="">退换货流程</a>
								</li>
								<li>
									<a target="_blank" href="">保修状态查询</a>
								</li>
							</ol>
						</dd>
					</dl>
					<dl class="s3">
						<dt>
							<p class="line"></p>
							<p class="title">维修与技术支持</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">售后网点</a>
								</li>
								<li>
									<a target="_blank" href="">预约维修</a>
								</li>
								<li>
									<a target="_blank" href="">手机寄修</a>
								</li>
								<li>
									<a target="_blank" href="">维修配件价格查询</a>
								</li>
							</ol>
						</dd>
					</dl>
					<dl class="s4">
						<dt>
							<p class="line"></p>
							<p class="title">关于我们</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">公司介绍</a>
								</li>
								<li>
									<a target="_blank" href="">华为商城简介</a>
								</li>
								<li>
									<a target="_blank" href="">华为线下门店</a>
								</li>
								<li>
									<a target="_blank" href="">荣耀线下门店</a>
								</li>
								<li>
									<a target="_blank" href="">诚征英才</a>
								</li>
							</ol>
						</dd>
					</dl>
					<dl class="s5">
						<dt>
							<p class="line"></p>
							<p class="title">关注我们</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">新浪微博</a>
								</li>
								<li>
									<a target="_blank" href="">腾讯微博</a>
								</li>
								<li>
									<a target="_blank" href="">花粉俱乐部</a>
								</li>
							</ol>
						</dd>
					</dl>
					<dl class="s6">
						<dt>
							<p class="line"></p>
							<p class="title">友情链接</p>
						</dt>
						<dd>
							<ol>
								<li>
									<a target="_blank" href="">华为官网</a>
								</li>
								<li>
									<a target="_blank" href="">华为商城手机版</a>
								</li>
								<li>
									<a target="_blank" href="">荣耀官网</a>
								</li>
								<li>
									<a target="_blank" href="">花粉俱乐部</a>
								</li>
								<li>
									<a target="_blank" href="">莫赛尔商城</a>
								</li>
							</ol>
						</dd>
					</dl>

				</div>
				<div class="service-right left">
					<dl class="s7">
						<dt>
							<p class="line"></p>
							<p class="title">400-088-6888</p>
						</dt>
						<dd>
							<ol>
								<li>
									<p>24小时客服热线（仅收市话费）</p>
								</li>
							</ol>
						</dd>
						<dd>
							<a id="tools-service-button" class="service-btn">
								<i></i>
								在线客服
							</a>
							<a id="nofollow-button" class="service-btn">
								<i></i>
								不良信息举报
							</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="footer-frame">
			<div class="footer">
				<div class="footer-content">
					<p class="footer-content-logo left">
						<a href="https://www.vmall.com">
							<img src="${pageContext.request.contextPath }/img/index/flogo.png">
						</a>
					</p>
					<p class="left">
						<a href="" title="隐私政策">隐私政策</a>
						<a href="" title="服务协议">服务协议</a>
						 Copyright © 2012-2017 华为软件技术有限公司 版权所有 保留一切权利
						<br>
						公安备案
						<a href="">苏公网安备32011402010009号</a>
						<em> | </em>
						<a href="">苏ICP备17040376号-6</a>
						<em> | </em>
						增值电信业务经营许可证：苏B2-20130048号
						<em> | </em>
						<br>
						网络文化经营许可证：
						<a href="">苏网文[2015] 1599-026号</a>
					</p>
					<p class="right footer-content-img">
						<a href="" class="left">
							<img src="${pageContext.request.contextPath }/img/index/20161224180914742.jpg">
						</a>
						<a href="" class="left">
							<img src="${pageContext.request.contextPath }/img/index/20160226162415360.png">
						</a>
						<a href="" class="left">
							<img src="${pageContext.request.contextPath }/img/index/20160226162521265.png">
						</a>
						<a href="" class="left">
							<img src="${pageContext.request.contextPath }/img/index/20160226162531395.png">
						</a>
						<a href="" class="left">
							<img src="${pageContext.request.contextPath }/img/index/20170725194955862.jpg">
						</a>
					</p>
					<span class="clear"></span>
				</div>
			</div>
		</div>

		<div class="hungBar">
			<a href="" class="hungBar-top right" id="hungBar-top" title="返回顶部">
				<i></i>
			</a>
			<div class="hungBar-content right">
				<a class="hungBar-for-help" title="帮助中心">
					<i></i>
				</a>
			</div>
		</div>

	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/require.js" defer async="true" data-main="${pageContext.request.contextPath }/js/main-index.js"></script>
</html>