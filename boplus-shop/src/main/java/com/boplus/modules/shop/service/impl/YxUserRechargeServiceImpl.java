/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.YxUserRecharge;
import com.boplus.modules.shop.service.YxUserRechargeService;
import com.boplus.modules.shop.service.dto.YxUserRechargeDto;
import com.boplus.modules.shop.service.dto.YxUserRechargeQueryCriteria;
import com.boplus.modules.shop.service.mapper.UserRechargeMapper;
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
//@CacheConfig(cacheNames = "yxUserRecharge")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class YxUserRechargeServiceImpl extends BaseServiceImpl<UserRechargeMapper, YxUserRecharge> implements YxUserRechargeService {

    private final IGenerator generator;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(YxUserRechargeQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<YxUserRecharge> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), YxUserRechargeDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<YxUserRecharge> queryAll(YxUserRechargeQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(YxUserRecharge.class, criteria));
    }


    @Override
    public void download(List<YxUserRechargeDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (YxUserRechargeDto yxUserRecharge : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("充值用户UID", yxUserRecharge.getUid());
            map.put("订单号", yxUserRecharge.getOrderId());
            map.put("充值金额", yxUserRecharge.getPrice());
            map.put("充值类型", yxUserRecharge.getRechargeType());
            map.put("是否充值", yxUserRecharge.getPaid());
            map.put("充值支付时间", yxUserRecharge.getPayTime());
            map.put("充值时间", yxUserRecharge.getAddTime());
            map.put("退款金额", yxUserRecharge.getRefundPrice());
            map.put("昵称", yxUserRecharge.getNickname());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
