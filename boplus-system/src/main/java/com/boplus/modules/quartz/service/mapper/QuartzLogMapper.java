/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.quartz.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.modules.quartz.domain.QuartzLog;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
* @author
* @date 2020-05-13
*/
@Repository
@Mapper
public interface QuartzLogMapper extends CoreMapper<QuartzLog> {

}
