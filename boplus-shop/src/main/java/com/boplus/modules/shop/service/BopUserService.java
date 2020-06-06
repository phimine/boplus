/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service;
import com.boplus.common.service.BaseService;
import com.boplus.modules.shop.domain.BopUser;
import com.boplus.modules.shop.service.dto.BopUserDto;
import com.boplus.modules.shop.service.dto.BopUserQueryCriteria;
import com.boplus.modules.shop.service.dto.UserGrantDto;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author mingming
* @date 2020-05-31
*/
public interface BopUserService  extends BaseService<BopUser>{

/**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(BopUserQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<BopUserDto>
    */
    List<BopUser> queryAll(BopUserQueryCriteria criteria);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<BopUserDto> all, HttpServletResponse response) throws IOException;

    /**
     * 升级VIP
     * @param userGrantDto
     */
    void grant(UserGrantDto userGrantDto);
}
