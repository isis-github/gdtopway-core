package com.gdtopway.module.auth.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.gdtopway.aud.dao.UserLogonLogDao;
import com.gdtopway.aud.entity.UserLogonLog;
import com.gdtopway.core.dao.jpa.BaseDao;
import com.gdtopway.core.security.PasswordService;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.core.service.Validation;
import com.gdtopway.core.util.DateUtils;
import com.gdtopway.core.util.UidUtils;
import com.gdtopway.module.auth.dao.PrivilegeDao;
import com.gdtopway.module.auth.dao.RoleDao;
import com.gdtopway.module.auth.dao.UserDao;
import com.gdtopway.module.auth.dao.UserExtDao;
import com.gdtopway.module.auth.entity.Privilege;
import com.gdtopway.module.auth.entity.Role;
import com.gdtopway.module.auth.entity.User;
import com.gdtopway.module.auth.entity.UserExt;
import com.gdtopway.module.auth.entity.User.AuthTypeEnum;
import com.gdtopway.support.service.DynamicConfigService;
import com.gdtopway.support.service.FreemarkerService;
import com.gdtopway.support.service.MailService;
import com.google.common.collect.Maps;

@Service
@Transactional
public class UserService extends BaseService<User, String> {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserExtDao userExtDao;

    @Autowired
    private UserLogonLogDao userLogonLogDao;

    @Autowired
    private PrivilegeDao privilegeDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private PasswordService passwordService;

    @Autowired
    private DynamicConfigService dynamicConfigService;

    @Autowired
    private MailService mailService;

    @Autowired(required = false)
    private FreemarkerService freemarkerService;

    @Override
    protected BaseDao<User, String> getEntityDao() {
        return userDao;
    }

    @Transactional(readOnly = true)
    public User findBySysAuthUid(String authUid) {
        return findByAuthTypeAndAuthUid(AuthTypeEnum.SYS, authUid);
    }

    @Transactional(readOnly = true)
    public User findByAuthTypeAndAuthUid(AuthTypeEnum authType, String authUid) {
        return userDao.findByAuthTypeAndAuthUid(authType, authUid);
    }

    @Transactional(readOnly = true)
    public User findBySysAccessToken(String accessToken) {
        return findByAuthTypeAndAccessToken(AuthTypeEnum.SYS, accessToken);
    }

    @Transactional(readOnly = true)
    public User findByAuthTypeAndAccessToken(AuthTypeEnum authType, String accessToken) {
        return userDao.findByAuthTypeAndAccessToken(authType, accessToken);
    }

    @Transactional(readOnly = true)
    public List<User> findByEmail(String email) {
        return userDao.findByEmail(email);
    }

    @Transactional(readOnly = true)
    public List<User> findByMobile(String mobile) {
        return userDao.findByMobile(mobile);
    }

    public String encodeUserPasswd(User user, String rawPassword) {
        return passwordService.entryptPassword(rawPassword, user.getAuthGuid());
    }

    public User save(User entity) {
        return super.save(entity);
    }

    public UserExt saveExt(UserExt entity) {
        return userExtDao.save(entity);
    }

    public User save(User entity, String rawPassword) {
        if (entity.isNew()) {
            Validation.notBlank(rawPassword, "创建账号必须提供初始密码");
            if (entity.getCredentialsExpireTime() == null) {
                //默认6个月后密码失效，到时用户登录强制要求重新设置密码
                entity.setCredentialsExpireTime(new DateTime().plusMonths(6).toDate());
            }
            entity.setAuthGuid(UidUtils.UID());

            if (StringUtils.isBlank(entity.getNickName())) {
                entity.setNickName(entity.getAuthUid());
            }
        }

        if (StringUtils.isNotBlank(rawPassword)) {
            String encodedPassword = encodeUserPasswd(entity, rawPassword);
            if (StringUtils.isNotBlank(entity.getPassword())) {
                //为了便于开发调试，开发模式允许相同密码修改
                Validation.isTrue(DynamicConfigService.isDevMode() || !entity.getPassword().equals(encodedPassword), "变更密码不能与当前密码一样");
            }
            entity.setPassword(encodedPassword);
        }

        if (entity.isNew()) {
            userDao.save(entity);

            UserExt userExt = new UserExt();
            userExt.setId(entity.getId());
            userExt.setSignupTime(DateUtils.currentDate());
            userExtDao.save(userExt);
        } else {
            userDao.save(entity);
        }

        return entity;
    }

    public User saveCascadeR2Roles(User entity, String rawPassword) {
        updateRelatedR2s(entity, entity.getSelectedRoleIds(), "userR2Roles", "role");
        if (StringUtils.isNotBlank(rawPassword)) {
            return save(entity, rawPassword);
        } else {
            return save(entity);
        }
    }

    @Transactional(readOnly = true)
    public List<Role> findRoles(User user) {
        return roleDao.findRolesForUser(user);
    }

    @Transactional(readOnly = true)
    public List<Privilege> findPrivileges(Set<String> roleCodes) {
        return privilegeDao.findPrivileges(roleCodes);
    }

    public void requestResetPassword(String webContextUrl, User user) {
        String email = user.getEmail();
        Assert.isTrue(StringUtils.isNotBlank(email), "User email required");
        String suject = dynamicConfigService.getString("cfg.user.reset.pwd.notify.email.title", "申请重置密码邮件");
        UserExt userExt = user.getUserExt();
        userExt.setRandomCode(UidUtils.UID());
        userExtDao.save(userExt);

        webContextUrl += ("/admin/password/reset?uid=" + user.getAuthUid() + "&email=" + email + "&code=" + userExt.getRandomCode());
        if (freemarkerService != null) {
            Map<String, Object> params = Maps.newHashMap();
            params.put("user", user);
            params.put("resetPasswordLink", webContextUrl.toString());
            String contents = freemarkerService.processTemplateByFileName("PASSWORD_RESET_NOTIFY_EMAIL", params);
            mailService.sendHtmlMail(suject, contents, true, email);
        } else {
            mailService.sendHtmlMail(suject, webContextUrl.toString(), true, email);
        }
    }

    @Async
    public void userLogonLog(User user, UserLogonLog userLogonLog) {

        String httpSessionId = userLogonLog.getHttpSessionId();
        if (StringUtils.isNotBlank(httpSessionId)) {
            if (userLogonLogDao.findByHttpSessionId(httpSessionId) != null) {
                return;
            }
        }

        //登录记录
        UserExt userExt = user.getUserExt();
        userExt.setLogonTimes(userExt.getLogonTimes() + 1);
        userExt.setLastLogonIP(userLogonLog.getRemoteAddr());
        userExt.setLastLogonHost(userLogonLog.getRemoteHost());
        userExt.setLastLogonTime(DateUtils.currentDate());

        //重置失败次数计数
        userExt.setLastLogonFailureTime(null);
        userExtDao.save(userExt);
        user.setLogonFailureTimes(0);
        userDao.save(user);

        userLogonLog.setLogonTimes(userExt.getLogonTimes());
        userLogonLogDao.save(userLogonLog);
    }

    public User findByAuthUid(String authUid) {
        return userDao.findByAuthUid(authUid);
    }

    public User findByRandomCodeAndAuthUid(String randomCode, String moblie) {
        UserExt userExt = userExtDao.findByRandomCode(randomCode);
        if (userExt != null) {
            User user = userDao.findOne(userExt.getId());
            if (moblie.equals(user.getMobile())) {
                return user;
            }
        }
        return null;
    }
}
