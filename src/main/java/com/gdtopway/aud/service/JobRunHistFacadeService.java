package com.gdtopway.aud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gdtopway.aud.entity.JobRunHist;

@Service
@Transactional
public class JobRunHistFacadeService {

    @Autowired
    private JobRunHistService jobRunHistService;

    /**
     * 异步新开事务写入定时任务运行记录
     * @param entity
     */
    @Async
    public void saveWithAsyncAndNewTransition(JobRunHist entity) {
        jobRunHistService.save(entity);
    }
}
