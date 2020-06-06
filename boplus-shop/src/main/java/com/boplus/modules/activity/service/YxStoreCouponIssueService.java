/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.activity.service;

import com.boplus.common.service.BaseService;
import com.boplus.modules.activity.domain.YxStoreCouponIssue;
import com.boplus.modules.activity.service.dto.YxStoreCouponIssueDto;
import com.boplus.modules.activity.service.dto.YxStoreCouponIssueQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author
* @date 2020-05-13
*/
public interface YxStoreCouponIssueService  extends BaseService<YxStoreCouponIssue>{

/**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(YxStoreCouponIssueQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<YxStoreCouponIssueDto>
    */
    List<YxStoreCouponIssue> queryAll(YxStoreCouponIssueQueryCriteria criteria);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<YxStoreCouponIssueDto> all, HttpServletResponse response) throws IOException;
}
