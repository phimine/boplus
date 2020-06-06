/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service;

import com.boplus.common.service.BaseService;
import com.boplus.modules.shop.domain.YxUser;
import com.boplus.modules.shop.service.dto.UserMoneyDto;
import com.boplus.modules.shop.service.dto.YxUserDto;
import com.boplus.modules.shop.service.dto.YxUserQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author
* @date 2020-05-12
*/
public interface YxUserService  extends BaseService<YxUser>{

/**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(YxUserQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<YxUserDto>
    */
    List<YxUser> queryAll(YxUserQueryCriteria criteria);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<YxUserDto> all, HttpServletResponse response) throws IOException;

    void onStatus(Integer id, int status);

    void updateMoney(UserMoneyDto param);

    void incBrokeragePrice(double doubleValue, Integer uid);
}
