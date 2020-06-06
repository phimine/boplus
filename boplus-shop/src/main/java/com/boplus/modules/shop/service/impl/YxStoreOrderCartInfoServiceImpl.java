/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.YxStoreOrderCartInfo;
import com.boplus.modules.shop.service.YxStoreOrderCartInfoService;
import com.boplus.modules.shop.service.dto.YxStoreOrderCartInfoDto;
import com.boplus.modules.shop.service.dto.YxStoreOrderCartInfoQueryCriteria;
import com.boplus.modules.shop.service.mapper.StoreOrderCartInfoMapper;
import com.boplus.utils.FileUtil;
import com.github.pagehelper.PageInfo;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// 默认不使用缓存
//import org.springframework.cache.annotation.CacheConfig;
//import org.springframework.cache.annotation.CacheEvict;
//import org.springframework.cache.annotation.Cacheable;

/**
* @author
* @date 2020-05-12
*/
@Service
@AllArgsConstructor
//@CacheConfig(cacheNames = "yxStoreOrderCartInfo")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxStoreOrderCartInfoServiceImpl extends BaseServiceImpl<StoreOrderCartInfoMapper, YxStoreOrderCartInfo> implements YxStoreOrderCartInfoService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxStoreOrderCartInfoQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxStoreOrderCartInfo> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxStoreOrderCartInfoDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxStoreOrderCartInfo> queryAll(YxStoreOrderCartInfoQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxStoreOrderCartInfo.class, criteria));
    }


    @Override
    public void download(List<YxStoreOrderCartInfoDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxStoreOrderCartInfoDto yxStoreOrderCartInfo : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("订单id", yxStoreOrderCartInfo.getOid());
            map.put("购物车id", yxStoreOrderCartInfo.getCartId());
            map.put("商品ID", yxStoreOrderCartInfo.getProductId());
            map.put("购买东西的详细信息", yxStoreOrderCartInfo.getCartInfo());
            map.put("唯一id", yxStoreOrderCartInfo.getUnique());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
