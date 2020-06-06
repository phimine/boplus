/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.mp.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.mp.domain.YxWechatMenu;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
* @author
* @date 2020-05-12
*/
@Repository
@Mapper
public interface WechatMenuMapper extends CoreMapper<YxWechatMenu> {

}
