package com.gdtopway.module.sys.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gdtopway.core.dao.jpa.BaseDao;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.module.auth.entity.User;
import com.gdtopway.module.sys.dao.UserProfileDataDao;
import com.gdtopway.module.sys.entity.UserProfileData;
import com.google.common.collect.Maps;

@Service
@Transactional
public class UserProfileDataService extends BaseService<UserProfileData, String> {

    @Autowired
    private UserProfileDataDao userProfileDataDao;

    @Override
    protected BaseDao<UserProfileData, String> getEntityDao() {
        return userProfileDataDao;
    }

    @Transactional(readOnly = true)
    public UserProfileData findByUserAndCode(User user, String code) {
        return userProfileDataDao.findByUserAndCode(user, code);
    }

    @Transactional(readOnly = true)
    public List<UserProfileData> findByUser(User user) {
        return userProfileDataDao.findByUser(user);
    }

    @Transactional(readOnly = true)
    public Map<String, Object> findMapDataByUser(User user) {
        Map<String, Object> mapData = Maps.newHashMap();
        List<UserProfileData> datas = userProfileDataDao.findByUser(user);
        for (UserProfileData data : datas) {
            mapData.put(data.getCode(), data.getValue());
        }
        return mapData;
    }
}
