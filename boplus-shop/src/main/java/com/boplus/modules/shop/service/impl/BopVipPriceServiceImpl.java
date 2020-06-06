/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.boplus.modules.shop.domain.BopVipPrice;
import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.modules.shop.service.dto.BopVipSummaryDto;
import com.boplus.mp.domain.YxWechatMenu;
import lombok.AllArgsConstructor;
import com.boplus.dozer.service.IGenerator;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.utils.ValidationUtil;
import com.boplus.utils.FileUtil;
import com.boplus.modules.shop.service.BopVipPriceService;
import com.boplus.modules.shop.service.dto.BopVipPriceDto;
import com.boplus.modules.shop.service.dto.BopVipPriceQueryCriteria;
import com.boplus.modules.shop.service.mapper.BopVipPriceMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
// 默认不使用缓存
//import org.springframework.cache.annotation.CacheConfig;
//import org.springframework.cache.annotation.CacheEvict;
//import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
* @author mingming
* @date 2020-05-31
*/
@Service
@AllArgsConstructor
//@CacheConfig(cacheNames = "bopVipPrice")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class BopVipPriceServiceImpl extends BaseServiceImpl<BopVipPriceMapper, BopVipPrice> implements BopVipPriceService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(BopVipPriceQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<BopVipPrice> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), BopVipPriceDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<BopVipPrice> queryAll(BopVipPriceQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(BopVipPrice.class, criteria));
    }


    @Override
    public void download(List<BopVipPriceDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BopVipPriceDto bopVipPrice : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("会员名称", bopVipPrice.getName());
            map.put("购买金额", bopVipPrice.getPrice());
            map.put("实际金额", bopVipPrice.getRealPrice());
            map.put("VIP时效", bopVipPrice.getPeriod());
            map.put("添加时间", bopVipPrice.getAddTime());
            map.put("是否删除.1=删除,0=未删除", bopVipPrice.getIsDel());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public List<BopVipSummaryDto> querySummary() {
        List<BopVipPrice> vipList = this.list(new QueryWrapper<BopVipPrice>().eq("`is_del`","0"));

        List<BopVipSummaryDto> results = new ArrayList<>();
        for (BopVipPrice bop : vipList) {
            BopVipSummaryDto dto = new BopVipSummaryDto();
            dto.setId(bop.getId());
            dto.setName(bop.getName());
            results.add(dto);
        }
        return results;
    }
}
