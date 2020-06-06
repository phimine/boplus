/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.impl;

import com.boplus.common.service.impl.BaseServiceImpl;
import com.boplus.common.utils.QueryHelpPlus;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.domain.BopUser;
import com.boplus.modules.shop.domain.BopVipPrice;
import com.boplus.modules.shop.service.BopUserService;
import com.boplus.modules.shop.service.BopVipPriceService;
import com.boplus.modules.shop.service.dto.BopUserDto;
import com.boplus.modules.shop.service.dto.BopUserQueryCriteria;
import com.boplus.modules.shop.service.dto.UserGrantDto;
import com.boplus.modules.shop.service.mapper.BopUserMapper;
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
* @author mingming
* @date 2020-05-31
*/
@Service
@AllArgsConstructor
//@CacheConfig(cacheNames = "bopUser")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class BopUserServiceImpl extends BaseServiceImpl<BopUserMapper, BopUser> implements BopUserService {

    private final IGenerator generator;

    private final BopVipPriceService bopVipPriceService;

    @Override
    //@Cacheable
    public Map<String, Object> queryAll(BopUserQueryCriteria criteria, Pageable pageable) {
        getPage(pageable);
        PageInfo<BopUser> page = new PageInfo<>(queryAll(criteria));
        Map<String, Object> map = new LinkedHashMap<>(2);
        map.put("content", generator.convert(page.getList(), BopUserDto.class));
        map.put("totalElements", page.getTotal());
        return map;
    }


    @Override
    //@Cacheable
    public List<BopUser> queryAll(BopUserQueryCriteria criteria){
        return baseMapper.selectList(QueryHelpPlus.getPredicate(BopUser.class, criteria));
    }


    @Override
    public void download(List<BopUserDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BopUserDto bopUser : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("用户账户", bopUser.getUsername());
            map.put("用户密码", bopUser.getPassword());
            map.put("真实姓名", bopUser.getRealName());
            map.put("生日", bopUser.getBirthday());
            map.put("身份证号码", bopUser.getCardId());
            map.put("用户备注", bopUser.getMark());
            map.put("用户昵称", bopUser.getNickname());
            map.put("用户头像", bopUser.getAvatar());
            map.put("手机号码", bopUser.getPhone());
            map.put("电子邮箱", bopUser.getEmail());
            map.put("所在城市", bopUser.getCity());
            map.put("工作单位", bopUser.getCompany());
            map.put("职位", bopUser.getPosition());
            map.put("关注领域", bopUser.getConcern());
            map.put("添加时间", bopUser.getAddTime());
            map.put("添加ip", bopUser.getAddIp());
            map.put("最后一次登录时间", bopUser.getLastTime());
            map.put("最后一次登录ip", bopUser.getLastIp());
            map.put("1为正常，0为禁止", bopUser.getStatus());
            map.put("等级: 0为普通会员，1为VIP", bopUser.getLevel());
            map.put("vip有效时间", bopUser.getVipValidDate());
            map.put("是否永久vip", bopUser.getIsForever());
            map.put("用户类型", bopUser.getUserType());
            map.put("用户登陆类型，h5,wechat,routine", bopUser.getLoginType());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public void grant(UserGrantDto userGrantDto) {
        Integer uid = userGrantDto.getUid();
        Integer period = userGrantDto.getPeriod();
        boolean forever = false;
        long extend = 0l;

        BopVipPrice bopVipPrice = bopVipPriceService.getById(period);
        if (null == bopVipPrice) {
            throw new RuntimeException("未找到相应的VIP卡信息！");
        }

        if (bopVipPrice.getPeriod() == 0) {
            forever = true;
        } else {
            extend = bopVipPrice.getPeriod() * 24 * 60 * 60 * 1000l;
        }

        BopUser bopUser = this.getById(uid);
        if (bopUser.getLevel() == 1 && bopUser.getIsForever() == 1) {
            // 已经是永久VIP
            return;
        }
        bopUser.setLevel(1);
        if (forever) {
            bopUser.setIsForever(1);
        } else {
            long current = System.currentTimeMillis();
            if (bopUser.getLevel() == 1) {
                current = Math.max(bopUser.getVipValidDate(), current);
            }
            bopUser.setVipValidDate(Math.addExact(current, extend));
        }

        this.saveOrUpdate(bopUser);
    }
}
