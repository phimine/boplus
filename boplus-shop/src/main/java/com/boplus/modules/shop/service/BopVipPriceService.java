/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service;
import com.boplus.common.service.BaseService;
import com.boplus.modules.shop.domain.BopVipPrice;
import com.boplus.modules.shop.service.dto.BopVipPriceDto;
import com.boplus.modules.shop.service.dto.BopVipPriceQueryCriteria;
import com.boplus.modules.shop.service.dto.BopVipSummaryDto;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author mingming
* @date 2020-05-31
*/
public interface BopVipPriceService  extends BaseService<BopVipPrice>{

/**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(BopVipPriceQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<BopVipPriceDto>
    */
    List<BopVipPrice> queryAll(BopVipPriceQueryCriteria criteria);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<BopVipPriceDto> all, HttpServletResponse response) throws IOException;

    /**
     * 查询VIP列表（ID & name）
     * @return
     */
    List<BopVipSummaryDto> querySummary();
}
