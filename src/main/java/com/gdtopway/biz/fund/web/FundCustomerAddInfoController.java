package com.gdtopway.biz.fund.web;

import javax.servlet.http.HttpServletRequest;


import com.gdtopway.core.annotation.MenuData;
import com.gdtopway.core.annotation.MetaData;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.core.web.BaseController;
import com.gdtopway.core.web.json.JsonViews;
import com.gdtopway.core.web.view.OperationResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.data.domain.Page;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gdtopway.biz.fund.entity.FundCustomerAddInfo;
import com.gdtopway.biz.fund.service.FundCustomerAddInfoService;

import com.fasterxml.jackson.annotation.JsonView;

@MetaData("现金贷管理:客户补充信息表管理")
@Controller
@RequestMapping(value = "/admin/fund/fund-customer-add-info")
public class FundCustomerAddInfoController extends BaseController<FundCustomerAddInfo,String> {

    @Autowired
    private FundCustomerAddInfoService fundCustomerAddInfoService;

    @Override
    protected BaseService<FundCustomerAddInfo, String> getEntityService() {
        return fundCustomerAddInfoService;
    }
    
    @ModelAttribute
    public void prepareModel(HttpServletRequest request, Model model, @RequestParam(value = "id", required = false) String id) {
        super.initPrepareModel(request, model, id);
    }
    
    @MenuData("现金贷管理:客户补充信息表")
    @RequiresPermissions("现金贷管理:客户补充信息表")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model) {
        return "admin/fund/fundCustomerAddInfo-index";
    }   
    
    @RequiresPermissions("现金贷管理:客户补充信息表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    @JsonView(JsonViews.Admin.class)
    public Page<FundCustomerAddInfo> findByPage(HttpServletRequest request) {
        return super.findByPage(FundCustomerAddInfo.class, request);
    }
    
    @RequestMapping(value = "/edit-tabs", method = RequestMethod.GET)
    public String editTabs(HttpServletRequest request) {
        return "admin/fund/fundCustomerAddInfo-inputTabs";
    }

    @RequiresPermissions("现金贷管理:客户补充信息表")
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editShow(Model model) {
        return "admin/fund/fundCustomerAddInfo-inputBasic";
    }

    @RequiresPermissions("现金贷管理:客户补充信息表")
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult editSave(@ModelAttribute("entity") FundCustomerAddInfo entity, Model model) {
        return super.editSave(entity);
    }

    @RequiresPermissions("现金贷管理:客户补充信息表")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult delete(@RequestParam("ids") String... ids) {
        return super.delete(ids);
    }
}