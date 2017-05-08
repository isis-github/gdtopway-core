package com.gdtopway.aud.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonView;
import com.gdtopway.aud.entity.LoggingEvent;
import com.gdtopway.aud.entity.LoggingEvent.LoggingHandleStateEnum;
import com.gdtopway.aud.service.LoggingEventService;
import com.gdtopway.core.annotation.MenuData;
import com.gdtopway.core.annotation.MetaData;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.core.util.EnumUtils;
import com.gdtopway.core.web.BaseController;
import com.gdtopway.core.web.json.JsonViews;
import com.gdtopway.core.web.view.OperationResult;

@MetaData("日志事件管理")
@Controller
@RequestMapping(value = "/admin/aud/logging-event")
public class LoggingEventController extends BaseController<LoggingEvent, Long> {

    @Autowired
    private LoggingEventService loggingEventService;

    @Override
    protected BaseService<LoggingEvent, Long> getEntityService() {
        return loggingEventService;
    }

    @ModelAttribute
    public void prepareModel(HttpServletRequest request, Model model, @RequestParam(value = "id", required = false) Long id) {
        super.initPrepareModel(request, model, id);
    }

    @MenuData("配置管理:系统记录:异常日志记录")
    @RequiresPermissions("配置管理:系统记录:异常日志记录")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("stateMap", EnumUtils.getEnumDataMap(LoggingHandleStateEnum.class));
        return "admin/aud/loggingEvent-index";
    }

    @RequiresPermissions("配置管理:系统记录:异常日志记录")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    @JsonView(JsonViews.Admin.class)
    public Page<LoggingEvent> findByPage(HttpServletRequest request) {
        return super.findByPage(LoggingEvent.class, request);
    }

    @RequiresPermissions("配置管理:系统记录:异常日志记录")
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editShow(Model model) {
        model.addAttribute("stateMap", EnumUtils.getEnumDataMap(LoggingHandleStateEnum.class));
        return "admin/aud/loggingEvent-inputBasic";
    }

    @RequiresPermissions("配置管理:系统记录:异常日志记录")
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult editSave(@ModelAttribute("entity") LoggingEvent entity, Model model) {
        return super.editSave(entity);
    }
}