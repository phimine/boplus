/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.gen.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.gen.domain.GenConfig;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface GenConfigMapper extends CoreMapper<GenConfig> {
}
