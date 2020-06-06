/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.mp.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.mp.domain.YxWechatTemplate;
import com.boplus.mp.service.YxWechatTemplateService;
import com.boplus.mp.service.dto.YxWechatTemplateDto;
import com.boplus.mp.service.dto.YxWechatTemplateQueryCriteria;
import com.boplus.mp.service.mapper.WechatTemplateMapper;
import com.boplus.utils.FileUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
//@CacheConfig(cacheNames = "yxWechatTemplate")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxWechatTemplateServiceImpl extends BaseServiceImpl<WechatTemplateMapper, YxWechatTemplate> implements YxWechatTemplateService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxWechatTemplateQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxWechatTemplate> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxWechatTemplateDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxWechatTemplate> queryAll(YxWechatTemplateQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxWechatTemplate.class, criteria));
    }


    @Override
    public void download(List<YxWechatTemplateDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxWechatTemplateDto yxWechatTemplate : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("模板编号", yxWechatTemplate.getTempkey());
            map.put("模板名", yxWechatTemplate.getName());
            map.put("回复内容", yxWechatTemplate.getContent());
            map.put("模板ID", yxWechatTemplate.getTempid());
            map.put("添加时间", yxWechatTemplate.getAddTime());
            map.put("状态", yxWechatTemplate.getStatus());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public YxWechatTemplate findByTempkey(String recharge_success_key) {
        return this.getOne(new QueryWrapper<YxWechatTemplate>().eq("tempkey",recharge_success_key));
    }
}
