/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.quartz.service.dto;

import com.boplus.annotation.Query;
import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

/**
* @author
* @date 2020-05-13
*/
@Data
public class QuartzJobQueryCriteria{

    @Query(type = Query.Type.INNER_LIKE)
    private String jobName;

    @Query
    private Boolean isSuccess;

    @Query
    private Boolean isPause;

    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}