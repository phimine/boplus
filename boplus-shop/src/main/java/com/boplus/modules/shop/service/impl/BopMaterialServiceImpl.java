/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.impl;

import com.boplus.modules.shop.domain.BopMaterial;
import com.boplus.common.service.impl.BaseServiceImpl;
import lombok.AllArgsConstructor;
import com.boplus.dozer.service.IGenerator;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.utils.ValidationUtil;
import com.boplus.utils.FileUtil;
import com.boplus.modules.shop.service.BopMaterialService;
import com.boplus.modules.shop.service.dto.BopMaterialDto;
import com.boplus.modules.shop.service.dto.BopMaterialQueryCriteria;
import com.boplus.modules.shop.service.mapper.BopMaterialMapper;
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
//@CacheConfig(cacheNames = "bopMaterial")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class BopMaterialServiceImpl extends BaseServiceImpl<BopMaterialMapper, BopMaterial> implements BopMaterialService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(BopMaterialQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<BopMaterial> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), BopMaterialDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<BopMaterial> queryAll(BopMaterialQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(BopMaterial.class, criteria));
    }


    @Override
    public void download(List<BopMaterialDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BopMaterialDto bopMaterial : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("类型1、图片；2、视频", bopMaterial.getType());
            map.put("素材名", bopMaterial.getName());
            map.put("素材链接", bopMaterial.getUrl());
            map.put("逻辑删除标记（0：显示；1：隐藏）", bopMaterial.getIsDel());
            map.put("创建时间", bopMaterial.getCreateTime());
            map.put("创建者ID", bopMaterial.getCreatorId());
            map.put("创建者", bopMaterial.getCreator());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
