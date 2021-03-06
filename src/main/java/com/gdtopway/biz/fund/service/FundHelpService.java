package com.gdtopway.biz.fund.service;


import com.gdtopway.biz.fund.dao.FunfCustomerContactDao;
import com.gdtopway.biz.fund.entity.FunfCustomerContact;
import com.gdtopway.core.dao.jpa.BaseDao;
import com.gdtopway.core.service.BaseService;
import com.gdtopway.core.web.captcha.ImageCaptchaServlet;
import com.gdtopway.module.sys.entity.DataDict;
import com.gdtopway.module.sys.service.DataDictService;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
@Transactional
public class FundHelpService  {

    @Autowired
    private DataDictService dataDictService;


    public String getCreditAmount(){

        List<DataDict> datadict = dataDictService.findChildrenByRootPrimaryKey("CREDITAMOUNT");
        if(CollectionUtils.isNotEmpty(datadict)){
            return datadict.get(0).getPrimaryValue();
        }

        return "";

    }


    public String getWeixinImgPath(){

        List<DataDict> datadict = dataDictService.findChildrenByRootPrimaryKey("SKZHEWM");
        if(CollectionUtils.isNotEmpty(datadict)){
            return datadict.get(0).getImagePathValue();
        }

        return "";
    }


    public String getServiceAmount(){

        List<DataDict> datadict = dataDictService.findChildrenByRootPrimaryKey("SERVICEAMOUNT");
        if(CollectionUtils.isNotEmpty(datadict)){
            return datadict.get(0).getPrimaryValue();
        }

        return "";

    }


    public static String validateResponse(String userCaptchaResponse) {

        HttpServletRequest request= ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        try {
            String captchaId = null;
            String moblieUUid = request.getParameter("uuid");
            if (StringUtils.isNotBlank(moblieUUid)) {
                captchaId = moblieUUid;
            } else {
                captchaId = request.getSession().getId();
            }

            if(ImageCaptchaServlet.imageCaptchaService.validateResponseForID(captchaId, userCaptchaResponse)){

                return "true";
            }else {
                return "false";
            }
        } catch (Exception e) {

        }
        return "false";
    }




}
