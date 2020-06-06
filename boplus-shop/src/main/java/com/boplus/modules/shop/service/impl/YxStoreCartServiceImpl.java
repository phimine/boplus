/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.YxStoreCart;
import com.boplus.modules.shop.service.YxStoreCartService;
import com.boplus.modules.shop.service.dto.CountDto;
import com.boplus.modules.shop.service.dto.YxStoreCartDto;
import com.boplus.modules.shop.service.dto.YxStoreCartQueryCriteria;
import com.boplus.modules.shop.service.mapper.StoreCartMapper;
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
//@CacheConfig(cacheNames = "yxStoreCart")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxStoreCartServiceImpl extends BaseServiceImpl<StoreCartMapper, YxStoreCart> implements YxStoreCartService {

    private final IGenerator generator;

    private final StoreCartMapper storeCartMapper;
    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxStoreCartQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxStoreCart> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxStoreCartDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxStoreCart> queryAll(YxStoreCartQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxStoreCart.class, criteria));
    }


    @Override
    public void download(List<YxStoreCartDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxStoreCartDto yxStoreCart : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("用户ID", yxStoreCart.getUid());
            map.put("类型", yxStoreCart.getType());
            map.put("商品ID", yxStoreCart.getProductId());
            map.put("商品属性", yxStoreCart.getProductAttrUnique());
            map.put("商品数量", yxStoreCart.getCartNum());
            map.put("添加时间", yxStoreCart.getAddTime());
            map.put("0 = 未购买 1 = 已购买", yxStoreCart.getIsPay());
            map.put("是否删除", yxStoreCart.getIsDel());
            map.put("是否为立即购买", yxStoreCart.getIsNew());
            map.put("拼团id", yxStoreCart.getCombinationId());
            map.put("秒杀产品ID", yxStoreCart.getSeckillId());
            map.put("砍价id", yxStoreCart.getBargainId());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public List<CountDto> findCateName() {
        return storeCartMapper.findCateName();
    }
}
