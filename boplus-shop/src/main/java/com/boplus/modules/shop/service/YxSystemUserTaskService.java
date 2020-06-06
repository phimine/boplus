/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service;

import com.boplus.common.service.BaseService;
import com.boplus.modules.shop.domain.YxSystemUserTask;
import com.boplus.modules.shop.service.dto.YxSystemUserTaskDto;
import com.boplus.modules.shop.service.dto.YxSystemUserTaskQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author
* @date 2020-05-12
*/
public interface YxSystemUserTaskService  extends BaseService<YxSystemUserTask>{

/**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(YxSystemUserTaskQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<YxSystemUserTaskDto>
    */
    List<YxSystemUserTask> queryAll(YxSystemUserTaskQueryCriteria criteria);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<YxSystemUserTaskDto> all, HttpServletResponse response) throws IOException;
}
