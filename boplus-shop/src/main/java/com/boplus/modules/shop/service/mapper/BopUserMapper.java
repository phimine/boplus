/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.modules.shop.domain.BopUser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
* @author mingming
* @date 2020-05-31
*/
@Repository
@Mapper
public interface BopUserMapper extends CoreMapper<BopUser> {

}
