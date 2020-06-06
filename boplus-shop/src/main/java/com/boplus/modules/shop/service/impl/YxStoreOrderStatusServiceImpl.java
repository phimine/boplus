/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.YxStoreOrderStatus;
import com.boplus.modules.shop.service.YxStoreOrderStatusService;
import com.boplus.modules.shop.service.dto.YxStoreOrderStatusDto;
import com.boplus.modules.shop.service.dto.YxStoreOrderStatusQueryCriteria;
import com.boplus.modules.shop.service.mapper.StoreOrderStatusMapper;
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
//@CacheConfig(cacheNames = "yxStoreOrderStatus")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxStoreOrderStatusServiceImpl extends BaseServiceImpl<StoreOrderStatusMapper, YxStoreOrderStatus> implements YxStoreOrderStatusService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxStoreOrderStatusQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxStoreOrderStatus> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxStoreOrderStatusDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxStoreOrderStatus> queryAll(YxStoreOrderStatusQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxStoreOrderStatus.class, criteria));
    }


    @Override
    public void download(List<YxStoreOrderStatusDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxStoreOrderStatusDto yxStoreOrderStatus : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("订单id", yxStoreOrderStatus.getOid());
            map.put("操作类型", yxStoreOrderStatus.getChangeType());
            map.put("操作备注", yxStoreOrderStatus.getChangeMessage());
            map.put("操作时间", yxStoreOrderStatus.getChangeTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
