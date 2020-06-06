/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.tools.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.tools.domain.QiniuConfig;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

/**
* @author
* @date 2020-05-13
*/
@Repository
@Mapper
public interface QiniuConfigMapper extends CoreMapper<QiniuConfig> {


    @Update("update qiniu_config set type = #{type} ")
    void updateType(@Param("type") String type);
}
