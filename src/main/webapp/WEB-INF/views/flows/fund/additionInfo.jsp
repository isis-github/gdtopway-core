<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="pixel-ratio-2 retina android android-6 android-6-0"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="theme-color" content="#1f212f">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta http-equiv="cache-control" content="max-age=864000">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="author" content="">
<meta name="description" content="">
<meta itemprop="name" content="">
<meta itemprop="description" content="">
<title>万能钱庄 - 互联网金融风控与导流平台</title>
<link rel="stylesheet" type="text/css" href="/assets/fund/weui.min.css">
<link rel="stylesheet" type="text/css" href="/assets/fund/jquery-weui.min.css">
<link rel="stylesheet" type="text/css" href="/assets/fund/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/assets/fund/yc.sby.mobile.extension.css">
<style type="text/css">
.require:before {
content: '*';
color: #d9534f;
font-weight: bold;
margin-right: 3px;
}
</style>
<link rel="stylesheet" type="text/css" href="/assets/fund/index.css">
</head>
<body>
<input type="hidden" id="ReturnUrl" name="ReturnUrl" value="#">
<input type="hidden" id="IsCertification" name="IsCertification" value="value">
<input type="hidden" id="hidFieldData" value="{&quot;Name&quot;:{&quot;IsRequired&quot;:true,&quot;Description&quot;:&quot;请输入姓名&quot;,&quot;Name&quot;:&quot;姓名&quot;},&quot;IdentityCode&quot;:{&quot;IsRequired&quot;:true,&quot;Description&quot;:&quot;请输入身份证号码&quot;,&quot;Name&quot;:&quot;身份证号码&quot;},&quot;FrontOfIDCard&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请上传身份证正面照&quot;,&quot;Name&quot;:&quot;身份证正面照&quot;},&quot;BackOfIDCard&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请上传身份证背面照&quot;,&quot;Name&quot;:&quot;身份证背面照&quot;},&quot;IDCardInHand&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请上传手持身份证照&quot;,&quot;Name&quot;:&quot;手持身份证照&quot;},&quot;CellPhoneNumber&quot;:{&quot;IsRequired&quot;:true,&quot;Description&quot;:&quot;请输入手机号码&quot;,&quot;Name&quot;:&quot;手机号码&quot;},&quot;QQ&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Regex\&quot;,\&quot;value\&quot;:\&quot;^([1-9]{1}[0-9]{4,10})?$\&quot;}&quot;,&quot;Description&quot;:&quot;请输入QQ号码&quot;,&quot;Name&quot;:&quot;QQ号码&quot;},&quot;Area&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请选择所在地区&quot;,&quot;Name&quot;:&quot;所在地区&quot;},&quot;Address&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入详细地址&quot;,&quot;Name&quot;:&quot;详细地址&quot;},&quot;FathersName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入父亲姓名&quot;,&quot;Name&quot;:&quot;姓名&quot;},&quot;FathersPhoneNumber&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入父亲电话号码&quot;,&quot;Name&quot;:&quot;电话号码&quot;},&quot;MothersName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入母亲姓名&quot;,&quot;Name&quot;:&quot;姓名&quot;},&quot;MothersPhoneNumber&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入母亲电话号码&quot;,&quot;Name&quot;:&quot;电话号码&quot;},&quot;SpousesName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入配偶姓名&quot;,&quot;Name&quot;:&quot;姓名&quot;},&quot;SpousesPhoneNumber&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入配偶电话号码&quot;,&quot;Name&quot;:&quot;电话号码&quot;},&quot;CompanyName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入公司名称&quot;,&quot;Name&quot;:&quot;名称&quot;},&quot;CompanyAddress&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入公司地址&quot;,&quot;Name&quot;:&quot;地址&quot;},&quot;CompanyPhoneNumber&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入公司电话号码&quot;,&quot;Name&quot;:&quot;电话号码&quot;},&quot;PostName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入职务名称&quot;,&quot;Name&quot;:&quot;职务名称&quot;},&quot;MonthlyIncome&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入月收入&quot;,&quot;Name&quot;:&quot;月收入(元)&quot;},&quot;WagePaymentMethod&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;WagePaymentMethod\&quot;}&quot;,&quot;Description&quot;:&quot;请选择工资发放方式&quot;,&quot;Name&quot;:&quot;工资发放方式&quot;},&quot;SocialSecuritySituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;SocialSecuritySituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择社保情况&quot;,&quot;Name&quot;:&quot;社保情况&quot;},&quot;JDBTotalLiabilities&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入借贷宝总负债&quot;,&quot;Name&quot;:&quot;总负债(元)&quot;},&quot;JDBTotalRepayment&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入借贷宝已还款&quot;,&quot;Name&quot;:&quot;已还款(元)&quot;},&quot;JJDTotalLiabilities&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入今借到总负债&quot;,&quot;Name&quot;:&quot;总负债(元)&quot;},&quot;JJDTotalRepayment&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入今借到已还款&quot;,&quot;Name&quot;:&quot;已还款(元)&quot;},&quot;RepaymentTodaySituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;RepaymentTodaySituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择今日还款情况&quot;,&quot;Name&quot;:&quot;今日还款情况&quot;},&quot;OverdueSituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;OverdueSituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择逾期情况&quot;,&quot;Name&quot;:&quot;逾期情况&quot;},&quot;ZMXYPoints&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入芝麻信用分&quot;,&quot;Name&quot;:&quot;芝麻信用分&quot;},&quot;AlipayAccount&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入支付宝账号&quot;,&quot;Name&quot;:&quot;支付宝账号&quot;},&quot;OperatorPassword&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入运营商密码&quot;,&quot;Name&quot;:&quot;运营商密码&quot;},&quot;WeiXinNo&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入微信号&quot;,&quot;Name&quot;:&quot;微信号&quot;},&quot;HuaBeiQuota&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入花呗额度&quot;,&quot;Name&quot;:&quot;花呗额度&quot;},&quot;IP&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入IP地址&quot;,&quot;Name&quot;:&quot;IP地址&quot;},&quot;PhoneModel&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入手机型号&quot;,&quot;Name&quot;:&quot;手机型号&quot;},&quot;AddressBook&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入通讯录&quot;,&quot;Name&quot;:&quot;通讯录&quot;},&quot;MarriageSituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;MarriageSituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择婚姻状况&quot;,&quot;Name&quot;:&quot;婚姻状况&quot;},&quot;EducationSituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;EducationSituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择学历情况&quot;,&quot;Name&quot;:&quot;学历情况&quot;},&quot;JieBeiQuota&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入借呗额度&quot;,&quot;Name&quot;:&quot;借呗额度&quot;},&quot;ProvidentFundSituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;ProvidentFundSituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择公积金情况&quot;,&quot;Name&quot;:&quot;公积金情况&quot;},&quot;PropertySituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;PropertySituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择房产情况&quot;,&quot;Name&quot;:&quot;房产情况&quot;},&quot;VehicleSituation&quot;:{&quot;IsRequired&quot;:false,&quot;ValueLimit&quot;:&quot;{\&quot;type\&quot;:\&quot;Enum\&quot;,\&quot;value\&quot;:\&quot;VehicleSituation\&quot;}&quot;,&quot;Description&quot;:&quot;请选择车辆情况&quot;,&quot;Name&quot;:&quot;车辆情况&quot;},&quot;ColleagueName&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入同事姓名&quot;,&quot;Name&quot;:&quot;姓名&quot;},&quot;ColleaguePhoneNumber&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入同事电话号码&quot;,&quot;Name&quot;:&quot;电话号码&quot;},&quot;ZhiMaCreditantifraudverify&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入芝麻欺诈信息验证&quot;,&quot;Name&quot;:&quot;芝麻欺诈信息验证&quot;},&quot;FrontOfIDCardCheckInfo&quot;:{&quot;IsRequired&quot;:false,&quot;Description&quot;:&quot;请输入身份证正面照校验信息&quot;,&quot;Name&quot;:&quot;身份证正面照校验信息&quot;}}">
<div class="img-content">
<div class="menus">
<a href="#" class="fa fa-bars"></a>
<a href="#" class="fa fa-user"></a>
</div>
<img style="width:100%;height:9.5rem;" src="/assets/fund/top_1.png">
</div>
<div class="m-navbar">
<div class="stick">
<span class="bar"></span>
</div>
<ul>
<li id="step1" class="status-curr"><span>个人信息</span></li>
<li id="step2" class="status-curr"><span>补充信息</span></li>
<li id="step3" class=""><span>账户信息</span></li>
<li id="step4" class=""><span>联系人信息</span></li>
</ul>
</div>
<form id="frm1" class="" novalidate="novalidate">
<input data-val="true" data-val-number="字段 商户申请单Id 必须是一个数字。" data-val-required="请输入 商户申请单Id" id="MerchantApplyFormId" name="MerchantApplyFormId" type="hidden" value="1896" aria-required="true" aria-describedby="MerchantApplyFormId-error" class="valid">
<input data-val="true" data-val-number="字段 渠道Id 必须是一个数字。" id="ChannelId" name="ChannelId" type="hidden" value="" aria-describedby="ChannelId-error" class="valid">
<div class="weui-cells__title" id="information">本人信息<span style="color:#d9534f;">（*为必填）</span></div>
<div class="weui-cells weui-cells_form" data-id="information">
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label require" for="Name">姓名</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input valid" id="Name" name="Name" type="text" value="" placeholder="请输入姓名" data-val="true" data-val-required="请输入姓名" aria-required="true" aria-describedby="Name-error" aria-invalid="false">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label require" for="CellPhoneNumber">手机号码</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input valid" id="CellPhoneNumber" name="CellPhoneNumber" readonly="true" type="number" value="15812658454" placeholder="请输入手机号码" data-val="true" data-val-required="请输入手机号码" aria-required="true" aria-describedby="CellPhoneNumber-error">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label require" for="IdentityCode">身份证号码</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input valid" data-val="true" data-val-identitycode="身份证号码 格式错误" id="IdentityCode" name="IdentityCode" type="text" value="" placeholder="请输入身份证号码" data-val-required="请输入身份证号码" aria-required="true" aria-describedby="IdentityCode-error" aria-invalid="false">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="WeiXinNo">微信号</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input valid" id="WeiXinNo" name="WeiXinNo" type="text" value="" placeholder="请输入微信号" aria-invalid="false">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell weui-cell_select weui-cell_select-after">
<div class="weui-cell__hd text-left">
<input data-val="true" data-val-number="字段 省份Id 必须是一个数字。" id="ProvinceId" name="ProvinceId" type="hidden" value="1" aria-describedby="ProvinceId-error" class="valid" aria-invalid="false">
<input data-val="true" data-val-number="字段 城市Id 必须是一个数字。" id="CityId" name="CityId" type="hidden" value="1" aria-describedby="CityId-error" class="valid" aria-invalid="false">
<input data-val="true" data-val-number="字段 地区Id 必须是一个数字。" id="DistrictId" name="DistrictId" type="hidden" value="1" aria-describedby="DistrictId-error" class="valid" aria-invalid="false">
<label class="weui-label" for="Area">所在地区</label>
</div>
<div class="weui-cell__bd">
<input class="weui-select" id="Area" name="Area" type="text" value="" placeholder="请选择所在地区" readonly="" data-code="1" data-codes="1,1,1">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="Address">详细地址</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input valid" id="Address" name="Address" type="text" value="" placeholder="请输入详细地址" aria-invalid="false">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
</div>
</form>
<form id="frm2" novalidate="novalidate" class="form-action" action="${flowExecutionUrl}" method="post">
<input type="hidden" id="eventId" name="_eventId" />
<div class="weui-cells__title" id="companyInfo">公司信息</div>
<div class="weui-cells weui-cells_form" data-id="companyInfo">
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="CompanyName">名称</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input" id="CompanyName" name="CompanyName" type="text" value="" placeholder="请输入公司名称">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="CompanyAddress">地址</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input" id="CompanyAddress" name="CompanyAddress" type="text" value="" placeholder="请输入公司地址">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="CompanyPhoneNumber">电话号码</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input" id="CompanyPhoneNumber" name="CompanyPhoneNumber" type="text" value="" placeholder="请输入公司电话号码">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
</div>
<div class="weui-cells__title" id="salaryInfo">薪酬信息</div>
<div class="weui-cells weui-cells_form" data-id="salaryInfo">
<div class="weui-cell">
<div class="weui-cell__hd">
<label class="weui-label" for="MonthlyIncome">月收入(元)</label>
</div>
<div class="weui-cell__bd">
<input class="weui-input" data-val="true" data-val-number="字段 月收入(元) 必须是一个数字。" data-val-range="请输入 0~1.79769313486232E+308" data-val-range-max="1.79769313486232E+308" data-val-range-min="0" id="MonthlyIncome" name="MonthlyIncome" type="number" value="" placeholder="请输入月收入">
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
</div>
</form>
<form id="frm3">
<div class="weui-cells__title" id="otherInfo">其他信息</div>
<div class="weui-cells weui-cells_form" data-id="otherInfo">
<div class="weui-cell">
<div class="weui-cell__hd text-left">
<label class="weui-label" for="FrontOfIDCard">身份证正面照</label>
</div>
<div class="weui-cell__bd">
<div class="weui-uploader__bd">
<div class="weui-uploader__input-box">
<img class="weui-uploader__file" src="#">
<input id="FrontOfIDCard" name="FrontOfIDCard" type="hidden" value="" placeholder="请上传身份证正面照">
<input class="weui-uploader__input uploadFile" id="UploaderFrontOfIDCard" accept="image/*" type="file">
</div>
</div>
<div class="weui-progress__bar">
<div class="weui-progress__inner-bar js_progress" id="PBFrontOfIDCard"></div>
<span></span>
</div>
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd text-left">
<label class="weui-label" for="BackOfIDCard">身份证反面照</label>
</div>
<div class="weui-cell__bd">
<div class="weui-uploader__bd">
<div class="weui-uploader__input-box">
<img class="weui-uploader__file" src="#">
<input id="BackOfIDCard" name="BackOfIDCard" type="hidden" value="" placeholder="请上传身份证背面照">
<input class="weui-uploader__input uploadFile" id="UploaderBackOfIDCard" accept="image/*" type="file">
</div>
</div>
<div class="weui-progress__bar">
<div class="weui-progress__inner-bar js_progress" id="PBBackOfIDCard"></div>
<span></span>
</div>
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
<div class="weui-cell">
<div class="weui-cell__hd text-left">
<label class="weui-label" for="IDCardInHand">手持身份证照</label>
</div>
<div class="weui-cell__bd">
<div class="weui-uploader__bd">
<div class="weui-uploader__input-box">
<img class="weui-uploader__file" src="#">
<input id="IDCardInHand" name="IDCardInHand" type="hidden" value="" placeholder="请上传手持身份证照">
<input class="weui-uploader__input" id="UploaderIDCardInHand" accept="image/*" type="file">
</div>
</div>
<div class="weui-progress__bar">
<div class="weui-progress__inner-bar js_progress" id="PBIDCardInHand"></div>
<span></span>
</div>
</div>
<div class="weui-cell__ft">
<i class="weui-icon-warn"></i>
</div>
</div>
</div>
</form>
<div id="divCertification" class="auditing hide">
<div class="weui-cells__title">运营商认证</div>
<div class="weui-cells">
<a class="weui-cell weui-cell_access" href="#">
<div class="weui-cell__bd">
<p>运营商</p>
</div>
<div class="weui-cell__ft">
<span>点击进行认证</span>
</div>
</a>
</div>
<div class="weui-cells__title">芝麻信用授权</div>
<div class="weui-cells">
<a class="weui-cell weui-cell_access" href="#">
<div class="weui-cell__bd">
<p>芝麻信用</p>
</div>
<div class="weui-cell__ft">
<span>点击进行授权</span>
</div>
</a>
</div>
</div>
<div class="weui-btn-area" style="padding-bottom:20px;">
<a class="weui-btn weui-btn_primary" href="javascript:clickNext()" id="btnNext">下一步</a>
<a class="weui-btn weui-btn_primary" href="javascript:clickPreStep()" id="btnPre">上一步</a>
</div>
<div id="Protocol" class="weui-popup__container">
<div class="weui-popup__overlay"></div>
<div class="weui-popup__modal">
<div id="ProtocolText" style="overflow-y: auto; font-size: 12px; padding: 0px 10px; height: 342px;">
<p style="margin:.0rem; orphans:0; text-align:center; widows:0">
<span style="font-family:黑体; font-size:1.2rem">用户授权协议</span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0" id="uidLabel">
<span style="font-family:黑体; font-size:0.8rem">授权人：</span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<a name="_cmntref2">
<span style="font-family:黑体; font-size:0.8rem">泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">ID</span>
<span style="font-family:黑体; font-size:0.8rem">号：</span>
<span id="uid" style="font-family:黑体; font-size:0.8rem"></span>
</a>
<a name="_cmntref1"></a>
<span style="font-family:黑体; font-size:0.8rem">（以下简称“用户”、“您”）</span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<span style="font-family:黑体; font-size:0.8rem">手机号码</span>
<span style="font-family:黑体; font-size:0.8rem">/</span>
<span style="font-family:黑体; font-size:0.8rem">邮箱：</span>
<span id="phone" style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<span style="font-family:黑体; font-size:0.8rem">被授权人：广州泛舟科技有限公司</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">本协议是有关您授权并同意泛舟科技在为您提泛舟服务时收集、使用以及可能涉及的向外提供您的个人信息的协议。本协议本着合法、正当、必要的原则向您明示您个人信息收集、使用的目的、方式和范围。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">本协议自您勾选“同意签署《用户授权协议》之日起生效，自您注销泛舟账户之日起失效。”</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">一、</span>
<span style="font-family:黑体; font-size:0.8rem">个人数据信息的收集、使用目的</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">1</span>
<span style="font-family:黑体; font-size:0.8rem">、为您提供泛舟数据分析服务，方便您更好的管理您的财务</span>
<span style="font-family:黑体; font-size:0.8rem">状况和信用卡；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">2、</span>
<span style="font-family:黑体; font-size:0.8rem">向您提供选择外部合作贷款机构的贷款产品申请贷款的服务；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">3、</span>
<span style="font-family:黑体; font-size:0.8rem">向您提供选择外部合作银行申请办理信用卡的服务。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">二、个人数据信息的收集范围以及获取方式</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">1.</span>
<span style="font-family:黑体; font-size:0.8rem">信息收集范围：为了使用泛舟科技泛舟产品的服务，</span>
<span style="font-family:黑体; font-size:0.8rem">您</span>
<span style="font-family:黑体; font-size:0.8rem">授权并同意泛舟科技获取、收集、保存、汇集、分析、处理您的以下个人数据信息，您知悉并同意</span>
<span style="font-family:黑体; font-size:0.8rem">在使用</span>
<span style="font-family:黑体; font-size:0.8rem">泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">产品时进行的操作行为，包括但不限于：</span>
<span style="font-family:黑体; font-size:0.8rem">登录泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">产品、浏览页面、开启产品预置功能、链接到第三方服务等行为时形成的以下个人数据信息会被</span>
<span style="font-family:黑体; font-size:0.8rem">卡</span>
<span style="font-family:黑体; font-size:0.8rem">牛获取，并用于对</span>
<span style="font-family:黑体; font-size:0.8rem">您</span>
<span style="font-family:黑体; font-size:0.8rem">提供服务</span>
<span style="font-family:黑体; font-size:0.8rem">：</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（1）</span>
<span style="font-family:黑体; font-size:0.8rem">您使用</span>
<span style="font-family:黑体; font-size:0.8rem">泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">时所使用的设备类型</span>
<span style="font-family:黑体; font-size:0.8rem">、型号</span>
<span style="font-family:黑体; font-size:0.8rem">、</span>
<span style="font-family:黑体; font-size:0.8rem">设备号、设备</span>
<span style="font-family:黑体; font-size:0.8rem">操作系统</span>
<span style="font-family:黑体; font-size:0.8rem">版本</span>
<span style="font-family:黑体; font-size:0.8rem">、</span>
<span style="font-family:黑体; font-size:0.8rem">设备客户端</span>
<span style="font-family:黑体; font-size:0.8rem">ID</span>
<span style="font-family:黑体; font-size:0.8rem">、设备客户端</span>
<span style="font-family:黑体; font-size:0.8rem">MAC</span>
<span style="font-family:黑体; font-size:0.8rem">地址、</span>
<span style="font-family:黑体; font-size:0.8rem">IOS</span>
<span style="font-family:黑体; font-size:0.8rem">idfa</span>
<span style="font-family:黑体; font-size:0.8rem">、国际移动用户识别码、客户端宽带类型、运营商名称及编号、</span>
<span style="font-family:黑体; font-size:0.8rem">IP</span>
<span style="font-family:黑体; font-size:0.8rem"></span>
<span style="font-family:黑体; font-size:0.8rem">(Internet</span>
<span style="font-family:黑体; font-size:0.8rem"></span>
<span style="font-family:黑体; font-size:0.8rem">Protocol)</span>
<span style="font-family:黑体; font-size:0.8rem">地址</span>
<span style="font-family:黑体; font-size:0.8rem">、登录泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">时发出的访问请求及其日期、时间</span>
<span style="font-family:黑体; font-size:0.8rem">、您系统操作的权限、您所在城市、</span>
<span style="font-family:黑体; font-size:0.8rem">GPS</span>
<span style="font-family:黑体; font-size:0.8rem">（经纬度）、历史位置变化记录位置、设备安装的客户端情况、</span>
<span style="font-family:黑体; font-size:0.8rem">root</span>
<span style="font-family:黑体; font-size:0.8rem">或越狱情况、虚拟软件安装情况、安装的定位客户端名称等设备信息；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（2）</span>
<span style="font-family:黑体; font-size:0.8rem">您的姓名</span>
<span style="font-family:黑体; font-size:0.8rem">、身份证件号码</span>
<span style="font-family:黑体; font-size:0.8rem">、性别、</span>
<span style="font-family:黑体; font-size:0.8rem">手机号码、</span>
<span style="font-family:黑体; font-size:0.8rem">邮箱账号等个人信息；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（3）</span>
<span style="font-family:黑体; font-size:0.8rem">您的银行卡账户信息、交易信息、网银登录账户信息、信用卡还款行为、储蓄卡余额、网络支付账户余额、信用卡授信额度、贷款、逾期、电子账单等银行信息；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（4）</span>
<span style="font-family:黑体; font-size:0.8rem">您的邮箱地址、短信收发信息、设备通讯录联系人号码、地址、邮编、通话记录等通讯类信息；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（5）</span>
<span style="font-family:黑体; font-size:0.8rem">您的泛舟</span>
<span style="font-family:黑体; font-size:0.8rem">ID</span>
<span style="font-family:黑体; font-size:0.8rem">号、泛舟客户端安装渠道号、泛舟客户端版本及版本号等泛舟数据信息；</span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（6）</span>
<span style="font-family:黑体; font-size:0.8rem">您自愿提供给泛舟管理的其他个人数据以及信用信息。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<ol start="2" type="1" style="margin:.0rem; padding-left:.0rem">
<li style="font-family:黑体; font-size:0.8rem; list-style-position:inside; margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">信息收集方式：您授权泛舟科技通过以下方式获取、收集您的个人数据信息：</span>
</li>
</ol>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（</span>
<span style="font-family:黑体; font-size:0.8rem">1</span>
<span style="font-family:黑体; font-size:0.8rem">）</span>
<span style="font-family:黑体; font-size:0.8rem">通过您提供的</span>
<span style="font-family:黑体; font-size:0.8rem">电子邮箱、手机号码、淘宝会员名</span>
<span style="font-family:黑体; font-size:0.8rem">及</span>
<span style="font-family:黑体; font-size:0.8rem">登录</span>
<span style="font-family:黑体; font-size:0.8rem">密码</span>
<span style="font-family:黑体; font-size:0.8rem">方式</span>
<span style="font-family:黑体; font-size:0.8rem">，</span>
<span style="font-family:黑体; font-size:0.8rem">获取、收集</span>
<span style="font-family:黑体; font-size:0.8rem">银行给您</span>
<span style="font-family:黑体; font-size:0.8rem">发送的</span>
<span style="font-family:黑体; font-size:0.8rem">信用卡</span>
<span style="font-family:黑体; font-size:0.8rem">电子账单</span>
<span style="font-family:黑体; font-size:0.8rem">、支付宝账户账单等</span>
<span style="font-family:黑体; font-size:0.8rem">的全部信息和数据</span>
<span style="font-family:黑体; font-size:0.8rem">；</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（</span>
<span style="font-family:黑体; font-size:0.8rem">2</span>
<span style="font-family:黑体; font-size:0.8rem">）通过您开通短信、彩信等读取权限，</span>
<span style="font-family:黑体; font-size:0.8rem">获取、收集您的资金交易信息；</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（</span>
<span style="font-family:黑体; font-size:0.8rem">3</span>
<span style="font-family:黑体; font-size:0.8rem">）</span>
<span style="font-family:黑体; font-size:0.8rem">通过您提供的</span>
<span style="font-family:黑体; font-size:0.8rem">银行卡号、</span>
<span style="font-family:黑体; font-size:0.8rem">网银账户用户名</span>
<span style="font-family:黑体; font-size:0.8rem">及</span>
<span style="font-family:黑体; font-size:0.8rem">密码，</span>
<span style="font-family:黑体; font-size:0.8rem">获取、收集</span>
<span style="font-family:黑体; font-size:0.8rem">网上银行系统内显示的</span>
<span style="font-family:黑体; font-size:0.8rem">账单、</span>
<span style="font-family:黑体; font-size:0.8rem">余额信息及交易明细信息</span>
<span style="font-family:黑体; font-size:0.8rem">；</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（</span>
<span style="font-family:黑体; font-size:0.8rem">4</span>
<span style="font-family:黑体; font-size:0.8rem">）通过您开通定位、读取通讯录、读取设备信息等权限，获取、收集您的设备及通讯、位置信息；</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">（</span>
<span style="font-family:黑体; font-size:0.8rem">5</span>
<span style="font-family:黑体; font-size:0.8rem">）通过与合法拥有您数据的第三方公司合作的方式获取、收集您的个人数据信息。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">三、您保证您使用泛舟产品服务时输入的所有信息真实、合法、有效、完整、准确。请您保持以上信息的及时更新，</span>
<span style="font-family:黑体; font-size:0.8rem">以便泛舟科技向您提供帮助，或者更好地为您提供服务。泛舟科技对您授权获取、收集的以上信息设置“自动更新”功能，如您同意自动更新，请在授权时勾选“同意自动更新”。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">四、</span>
<span style="font-family:黑体; font-size:0.8rem">在您选择向泛舟科技合作的第三方</span>
<span style="font-family:黑体; font-size:0.8rem">机构</span>
<span style="font-family:黑体; font-size:0.8rem">（即泛舟的贷款超市提供的第三方贷款产品如钱站、卡易贷、量化派、厚本、宜人贷、我来贷、玖富、招联、功夫贷、拍拍贷等）申请贷款时，您授权并同意泛舟科技将您授权的本协议第二条泛舟收集的个人信息提供给您所申请贷款的第三方机构，以便第三方机构对您的信用以及贷款额度等进行评估。同时，您授权并同意您所申请贷款的第三方机构将您的贷</span>
<span style="font-family:黑体; font-size:0.8rem">款信息（包括但不限于申请贷款时间、贷款审核结果、放款时间、放款结果、贷款金额、贷款期限、还款状态、还款日、每月应还等个人信息）提供给泛舟科技，以便泛舟管理您的贷款、按照您的要求提醒还款时间。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">五、</span>
<span style="font-family:黑体; font-size:0.8rem">在您选择向泛舟科技合作的银行申请办理信用卡时，您授权并同意泛舟科技将您授权的本协议第二条部分个人信息提供给您所申请信用卡的银行，以便银行对您的信用以及信用卡额度进行评估。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; text-indent:.0rem">
<span style="font-family:黑体; font-size:0.8rem">六、</span>
<span style="font-family:黑体; font-size:0.8rem">其他</span>
</p>
<ol type="1" style="margin:.0rem; padding-left:.0rem">
<li style="font-family:黑体; font-size:0.8rem; list-style-position:inside; margin:.0rem; orphans:0; text-indent:.0rem; widows:0">
<a name="_cmntref3">
<span style="font-family:黑体; font-size:0.8rem">您使用泛舟科技泛舟软件服务即视为您已经阅读并同意受本协议的约束。泛舟科技有权在必要时修改本协议条款，修改条款后将给您明确提示</span>
</a>
<span style="font-family:黑体; font-size:0.8rem">。您可以在泛舟科技相关页面查阅本规则的最新版本。本协议条款变更后，如果您继续使用泛舟科技泛舟软件，即视为您已接受修改后的协议条款。如果您不接受修改后的协议条款，应当停止使用泛舟科技泛舟软件。</span>
</li>
<li style="font-family:黑体; font-size:0.8rem; list-style-position:inside; margin:.0rem; orphans:0; text-indent:.0rem; widows:0">
<span style="font-family:黑体; font-size:0.8rem">本协议内容同时包含泛舟科技泛舟软件上的所有业务使用规则。上述内容一经正式发布，即视为本协议不可分割的组成部分，您同样应当遵守。上述内容与本协议存在冲突的，以本协议为准。您对前述任何业务使用规则的接受，即视为您对本协议全部的接受。</span>
</li>
<li style="font-family:黑体; font-size:0.8rem; list-style-position:inside; margin:.0rem; orphans:0; text-indent:.0rem; widows:0">
<span style="font-family:黑体; font-size:0.8rem">本协议的成立、效力、执行和解释及争议的解决均应适用中华人民共和国大陆区法律。若您与泛舟科技</span>
<span style="font-family:黑体; font-size:0.8rem">之间发生</span>
<span style="font-family:黑体; font-size:0.8rem">任何争议或纠纷</span>
<span style="font-family:黑体; font-size:0.8rem">，首</span>
<span style="font-family:黑体; font-size:0.8rem">先应</span>
<span style="font-family:黑体; font-size:0.8rem">双方友好协商解决，</span>
<span style="font-family:黑体; font-size:0.8rem">协商无法解决的，您同意</span>
<span style="font-family:黑体; font-size:0.8rem">向</span>
<span style="font-family:黑体; font-size:0.8rem">泛舟科技所在地（即广州市天河区）</span>
<span style="font-family:黑体; font-size:0.8rem">有管辖权的人民法院提请诉讼</span>
<span style="font-family:黑体; font-size:0.8rem">。</span>
</li>
<li style="font-family:黑体; font-size:0.8rem; list-style-position:inside; margin:.0rem; orphans:0; text-indent:.0rem; widows:0">
<span style="font-family:黑体; font-size:0.8rem">本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵</span>
<span style="font-family:黑体; font-size:0.8rem">义解释的依据。</span>
</li>
</ol>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem">本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。</span>
</p>
<p style="margin:.0rem">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; widows:0">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; widows:0">
<span style="font-family:黑体; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<span style="font-family:Calibri; font-size:0.8rem"></span>
</p>
<p style="margin:.0rem; orphans:0; text-align:justify; widows:0">
<span style="font-family:Calibri; font-size:0.8rem"></span>
</p>
</div>
<div class="button_sp_area" style="text-align:right;padding-right:10px; height:60px; background:#fff;border-top:1px solid #d9d9d9;">
<a class="weui-btn weui-btn_mini weui-btn_plain-default close-popup" href="javascript:void(0)">取消</a>
<a class="weui-btn weui-btn_mini weui-btn_plain-primary" href="javascript:void(0)" id="btnAddressBook">确定</a>
</div>
</div>
</div>
<script type="text/javascript" src="/assets/fund/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="/assets/fund/jquery.transit.js"></script>
<script type="text/javascript" src="/assets/fund/jquery.validate.min.js"></script>
<script type="text/javascript" src="/assets/fund/jquery.validate.unobtrusive.min.js"></script>
<script type="text/javascript" src="/assets/fund/jweixin-1.2.0.js"></script>
<script type="text/javascript" src="/assets/fund/swiper.min.js"></script>
<script type="text/javascript" src="/assets/fund/jquery-weui.min.js"></script>
<script type="text/javascript" src="/assets/fund/fastclick.js"></script>
<script type="text/javascript" src="/assets/fund/crypto-js.js"></script>
<script type="text/javascript" src="/assets/fund/yc.sby.city.picker.js"></script>
<script type="text/javascript" src="/assets/fund/yc.sby.jquery.validate.unobtrusive.js"></script>
<script type="text/javascript" src="/assets/fund/yc.sby.enum.mapping.js"></script>
<script type="text/javascript" src="/assets/fund/yc.sby.form.js"></script>
<script type="text/javascript" src="/assets/fund/yc.sby.mobile.js"></script>
<script type="text/javascript">
var Environment = 'PRO';
var WechatParameters = 'fHx8';


function clickNext(){

    console.log('next');
    $('#eventId').val('submit');
    $('#frm2').submit();

}

function clickPreStep(){

    console.log('pre');
    $('#eventId').val('preStep');
    $('#frm2').submit();
}



</script>
<script type="text/javascript" src="/assets/fund/canvas-to-blob.js"></script>
<script type="text/javascript" src="/assets/fund/index3.js"></script>

</body></html>
