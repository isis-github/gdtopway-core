package com.gdtopway.module.auth.web;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gdtopway.core.annotation.MenuData;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.core.web.BaseController;
import com.gdtopway.core.web.view.OperationResult;
import com.gdtopway.module.auth.entity.Role;
import com.gdtopway.module.auth.entity.RoleR2Privilege;
import com.gdtopway.module.auth.service.PrivilegeService;
import com.gdtopway.module.auth.service.RoleService;
import com.google.common.collect.Sets;

@Controller
@RequestMapping(value = "/admin/auth/role")
public class RoleController extends BaseController<Role, String> {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PrivilegeService privilegeService;

    @Override
    protected BaseService<Role, String> getEntityService() {
        return roleService;
    }

    @RequiresUser
    @ModelAttribute
    public void prepareModel(HttpServletRequest request, Model model, @RequestParam(value = "id", required = false) String id) {
        Role role = super.initPrepareModel(request, model, id);
        if (role.isNew()) {
            role.setCode("ROLE_");
        }
    }

    @MenuData("配置管理:权限管理:角色配置")
    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index() {
        return "admin/auth/role-index";
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public Page<Role> findByPage(HttpServletRequest request) {
        return super.findByPage(Role.class, request);
    }

    @RequestMapping(value = "/edit-tabs", method = RequestMethod.GET)
    public String editTabs(HttpServletRequest request) {
        return "admin/auth/role-inputTabs";
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editShow() {
        return "admin/auth/role-inputBasic";
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult editSave(@ModelAttribute("entity") Role entity, Model model) {
        return super.editSave(entity);
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult delete(@RequestParam("ids") String... ids) {
        return super.delete(ids);
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/privileges", method = RequestMethod.GET)
    public String privilegeR2sShow(@ModelAttribute("entity") Role entity, Model model) {
        Set<String> r2PrivilegeIds = Sets.newHashSet();
        List<RoleR2Privilege> r2s = entity.getRoleR2Privileges();
        if (CollectionUtils.isNotEmpty(r2s)) {
            for (RoleR2Privilege r2 : r2s) {
                r2PrivilegeIds.add(r2.getPrivilege().getId());
            }
        }
        model.addAttribute("r2PrivilegeIds", StringUtils.join(r2PrivilegeIds, ","));
        return "admin/auth/role-privileges";
    }

    @RequiresPermissions("配置管理:权限管理:角色配置")
    @RequestMapping(value = "/privileges", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult privilegeR2sSave(@ModelAttribute("entity") Role entity,
            @RequestParam(value = "privilegeIds", required = false) String[] privilegeIds) {
        roleService.updateRelatedPrivilegeR2s(entity, privilegeIds);
        return OperationResult.buildSuccessResult();
    }

}
