<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<title>Document</title>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/enroll.css"/>
	<script type = "text/javascript" src = "${pageContext.request.contextPath}/js/require.js" 
	defer async = "true" data-main = "${pageContext.request.contextPath}/js/main-enroll"></script> 
</head>
<body>
	<div class="head"> 
		<div class="head_center">
			<div class="main_logo" style="width:143px">
				<img src="../img/enroll/head-top.png"/>
			</div>
			<div class="website-name" style="color:#fff;">
				<b style="font-size: 18px;margin-top: -3px;float: left;color:#cccccc;">|</b>
				<b style="font-size: 18px;margin-top: -1px;float: left; margin-left:18px;color:#ffffff">华为商城</b>
			</div>
		</div>
	</div>
	<div class="wp1 relative">
		<div class="register-content" style="padding-top: 30px;">
			<div class="reg-tab">
				<a href="#" class="phone-wrap l">
					<i class="phone-icon"></i>
					<span class="tab-phone" style="width: 66px;">手机号</span>
				</a>
				<a href="#" class="mail-wrap l sel">
					<i class="mail-icon"></i>
					<span class="tab-email" style="width: 66px;">电子邮箱</span>
				</a>
				<div class="login">
					已有华为帐号
					<a href="#" tilte="登录">登录></a>
				</div>
			</div>
			<form  class="reg-detail">
				<div class="input-container">
					<div class="input-left">国家</div>
					<div class="input-content" style="margin-left: 123px;">
						<div class="node-input">
							<span class="select-text">中国</span>
							<div class="select-ico"></div>
						</div>
					</div>
				</div>
				<div class="input-container" id="errormsgemail-box">
					<div class="input-left">邮件地址</div>
					<div class="input-content">
						<input type="text"  id="email" placeholder="请输入邮件地址" class="text" maxlength="50" />
					</div>
					<span id="msg_email" ></span>
				</div>
				<div class="input-container" id="randomCodeDiv">
					<div class="input-left">图形验证码</div>
					<div class="input-right">
						<a href="###" class="code"><span id="randomCodeImg"></span></a>
					</div>
					
					<div class="input-content">
						<input type="text"  id="randomCode" placeholder="请输入图形验证码" class="text"  />
					</div>
					<span id="randomCode_msg"></span>
				</div>
				
				<div class="input-msgcode">
					<div class="input-container" id="errRandomCode-box">
						<div class="input-left">邮件验证码</div>
						<div class="input-right">
							<input type="button" class="get-code" id="getValiCode" value="获取验证码" />
						</div>
						<div class="input-content">
							<input type="text"  id="emailCode" placeholder="请输入邮件验证码" class="text" maxlength="8" />
						</div>
						<span id = "emailCode_mag"></span>
					</div>
					<div class="input-container" id="pwdDiv">
						<div class="input-left">密码</div>
						<div class="input-content">
							<input type="password"  id="password" placeholder="请输入密码" class="text" maxlength="32" />
						</div>
						<span id="password_mag" ></span>
					</div>
					
					<div class="input-container" id="confirmpwdDiv">
						<div class="input-left">确认密码</div>
						<div class="input-content">
							<input type="password"  id="confirmPwd" placeholder="请再次输入密码" class="text" maxlength="32" />
						</div>
						<span id="confirmPwd_msg" ></span>
					</div>
					<div class="pwd-info">
						<div class="normal-tips">
							密码强度：
							<span id="pwdComplexFlag"></span>
						</div>
						<div id="line8-EMUI5" class="pwd-strong-div"></div>
						<div id="pwd-tips">勿使用其他帐号的密码。</div>
					</div>
					<div class="birthday_line"></div>
					<div class="agreement">
						<div class="agreementInfo">
							<div class="dataCollect">
								华为需采集浏览器信息（例如类型、时区、插件、语言、字体、canvas图片渲染哈希值、webgl图片渲染哈希值），IP地址，您在页面上的鼠标和键盘操作信息，并使用cookie、localstorage和flash cookie，用以防御欺诈行为。
							</div>
							<div class="agrLineH">
								点击注册，即表示您同意上述内容及<a href="https://hwid1.vmall.com/CAS/portal/agreements/userAgreement/zh-CN_userAgreement.html?version=china" target="_blank">华为帐号用户协议</a>并确认您已阅读<a href="https://hwid1.vmall.com/CAS/portal/agreements/userPrivacyPolicy/zh-CN_userPrivacyPolicy.html" target="_blank">华为隐私政策</a>
							</div>
						</div>
					</div>
					<div class="reg-btn" align="center">
						<a href="#" id="btnSubmit" class="btn" >注册</a>
					</div>
				</div>
			</form>
			<div class="box-shadow"></div>
			<div class="wp1 ft">
				<div class="reg-content">
					<p class="footer">
						<a href="https://hwid1.vmall.com/CAS/portal/agreements/userAgreement/zh-cn_userAgreement.html?version=china" class="rule" target="_blank">用户协议</a>
						<em>|</em>
						<a href="https://hwid1.vmall.com/CAS/portal/agreements/userPrivacyPolicy/zh-cn_userPrivacyPolicy.html?version=europe" class="rule" target="_blank">隐私政策</a>
						<em>|</em>
						<a href="https://hwid1.vmall.com/CAS/portal/faq/faq.html" class="rule" target="_blank">常见问题</a>
					</p>
					<p class="footer">
						Copyright&nbsp;©&nbsp;2011-2017&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>