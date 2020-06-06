/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.YxMaterialGroup;
import com.boplus.modules.shop.service.YxMaterialGroupService;
import com.boplus.modules.shop.service.dto.YxMaterialGroupDto;
import com.boplus.modules.shop.service.dto.YxMaterialGroupQueryCriteria;
import com.boplus.modules.shop.service.mapper.MaterialGroupMapper;
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
//@CacheConfig(cacheNames = "yxMaterialGroup")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxMaterialGroupServiceImpl extends BaseServiceImpl<MaterialGroupMapper, YxMaterialGroup> implements YxMaterialGroupService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxMaterialGroupQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxMaterialGroup> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxMaterialGroupDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxMaterialGroup> queryAll(YxMaterialGroupQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxMaterialGroup.class, criteria));
    }


    @Override
    public void download(List<YxMaterialGroupDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxMaterialGroupDto yxMaterialGroup : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("逻辑删除标记（0：显示；1：隐藏）", yxMaterialGroup.getDelFlag());
            map.put("创建时间", yxMaterialGroup.getCreateTime());
            map.put("创建者ID", yxMaterialGroup.getCreateId());
            map.put("分组名", yxMaterialGroup.getName());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
