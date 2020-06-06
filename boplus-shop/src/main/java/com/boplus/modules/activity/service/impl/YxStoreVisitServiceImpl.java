/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.activity.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.activity.domain.YxStoreVisit;
import com.boplus.modules.activity.service.YxStoreVisitService;
import com.boplus.modules.activity.service.dto.YxStoreVisitDto;
import com.boplus.modules.activity.service.dto.YxStoreVisitQueryCriteria;
import com.boplus.modules.activity.service.mapper.YxStoreVisitMapper;
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
* @date 2020-05-13
*/
@Service
@AllArgsConstructor
//@CacheConfig(cacheNames = "yxStoreVisit")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxStoreVisitServiceImpl extends BaseServiceImpl<YxStoreVisitMapper, YxStoreVisit> implements YxStoreVisitService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxStoreVisitQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxStoreVisit> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxStoreVisitDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxStoreVisit> queryAll(YxStoreVisitQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxStoreVisit.class, criteria));
    }


    @Override
    public void download(List<YxStoreVisitDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxStoreVisitDto yxStoreVisit : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("产品ID", yxStoreVisit.getProductId());
            map.put("产品类型", yxStoreVisit.getProductType());
            map.put("产品分类ID", yxStoreVisit.getCateId());
            map.put("产品类型", yxStoreVisit.getType());
            map.put("用户ID", yxStoreVisit.getUid());
            map.put("访问次数", yxStoreVisit.getCount());
            map.put("备注描述", yxStoreVisit.getContent());
            map.put("添加时间", yxStoreVisit.getAddTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
