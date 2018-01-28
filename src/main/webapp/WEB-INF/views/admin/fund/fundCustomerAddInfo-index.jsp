<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="row search-form-default">
		<div class="col-md-12">
			<form method="get" class="form-inline form-validation form-search form-search-init control-label-sm"
				data-grid-search="#grid-fund-fund-customer-add-info-index">
				<div class="form-group">
					<div class="controls controls-clearfix">
						<input type="text" name="search['CN_company_OR_companyphone']" class="form-control input-xlarge" placeholder="公司名称 , 公司电话...">
					</div>
				</div>
				<div class="form-group search-group-btn">
					<button class="btn green" type="submmit">
						<i class="m-icon-swapright m-icon-white"></i>&nbsp; 查&nbsp;询
					</button>
					<button class="btn default" type="reset">
						<i class="fa fa-undo"></i>&nbsp; 重&nbsp;置
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table id="grid-fund-fund-customer-add-info-index"></table>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function() {
		    $("#grid-fund-fund-customer-add-info-index").data("gridOptions", {
		        url : WEB_ROOT + '/admin/fund/fund-customer-add-info/list',
		        colModel : [ {
		            label : '流水号',
		            name : 'id',
		            hidden : true                          
		        }, {
		            label : '公司名称',
		            name : 'company',
		            width : 200,
		            align : 'center',
		            editable: true                                                                   
		        }, {
		            label : '公司电话',
		            name : 'companyphone',
		            width : 100,
		            align : 'center',
		            editable: true                                                                   
		        }, {
		            label : 'mincome',
		            name : 'mincome',
		            editable: true                                                                   
		        } ],
		        editurl : WEB_ROOT + '/admin//fund/fund-customer-add-info/edit',
		        editrulesurl : WEB_ROOT + '/admin/util/validate?clazz=${clazz}',
		        delurl : WEB_ROOT + '/admin/fund/fund-customer-add-info/delete',
		        fullediturl : WEB_ROOT + '/admin/fund/fund-customer-add-info/edit-tabs'
		    });
		});
    </script>
</body>
</html>
