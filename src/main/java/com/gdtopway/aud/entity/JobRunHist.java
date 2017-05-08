package com.gdtopway.aud.entity;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.gdtopway.core.annotation.MetaData;
import com.gdtopway.core.entity.PersistableEntity;
import com.gdtopway.core.util.id.IdDeserializer;
import com.gdtopway.core.util.id.IdSerialize;
import com.gdtopway.core.web.json.DateTimeJsonSerializer;

@Getter
@Setter
@Accessors(chain = true)
@Access(AccessType.FIELD)
@Entity
@Table(name = "sche_JobRunHist")
@MetaData(value = "任务计划运行历史记录")
@Cache(usage = CacheConcurrencyStrategy.NONE)
public class JobRunHist extends PersistableEntity<Long> {

    private static final long serialVersionUID = -5759986321900611939L;

    @Id
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator", strategy = "com.gdtopway.core.entity.SnowflakeIDGenerator",
	parameters = { @Parameter(name = "workerId", value = "0") ,@Parameter(name = "datacenterId", value = "0")})
    //@GenericGenerator(name = "idGenerator", strategy = "native")
    @Column(nullable = false, unique = true,precision = 19,scale = 0)
    @JsonSerialize(using = IdSerialize.class)
    private Long id;

    @MetaData(value = "Job名称")
    @Column(length = 64, nullable = true)
    private String jobName;

    @MetaData(value = "Job分组")
    @Column(length = 64, nullable = true)
    private String jobGroup;

    @MetaData(value = "Job类")
    @Column(length = 512, nullable = true)
    private String jobClass;

    @MetaData(value = "Trigger名称")
    @Column(length = 64, nullable = true)
    private String triggerName;

    @MetaData(value = "Trigger分组 ")
    @Column(length = 64, nullable = true)
    private String triggerGroup;

    @MetaData(value = "异常标识")
    private Boolean exceptionFlag = Boolean.FALSE;

    @MetaData(value = "执行结果")
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private String result;

    @MetaData(value = "异常日志")
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private String exceptionStack;

    //以下参数具体参考官方接口文档说明：
    //org.quartz.plugins.history.LoggingJobHistoryPlugin.LoggingJobHistoryPlugin#jobWasExecuted(JobExecutionContext context, JobExecutionException jobException)
    @MetaData(value = "本次触发时间")
    @JsonSerialize(using = DateTimeJsonSerializer.class)
    private Date fireTime;

    @MetaData(value = "上次触发时间")
    @JsonSerialize(using = DateTimeJsonSerializer.class)
    private Date previousFireTime;

    @MetaData(value = "下次触发时间")
    @JsonSerialize(using = DateTimeJsonSerializer.class)
    private Date nextFireTime;

    @MetaData(value = "触发次数")
    private Integer refireCount;

    @MetaData(value = "触发节点标识")
    private String nodeId;

    @Override
    @Transient
    public String getDisplay() {
        return jobClass + ":" + fireTime;
    }
}
