/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.rest;

import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpUtil;
import com.boplus.constant.ShopConstants;
import com.boplus.dozer.service.IGenerator;
import com.boplus.exception.BadRequestException;
import com.boplus.logging.aop.log.Log;
import com.boplus.modules.shop.domain.YxSystemStore;
import com.boplus.modules.shop.service.YxSystemStoreService;
import com.boplus.modules.shop.service.dto.YxSystemStoreDto;
import com.boplus.modules.shop.service.dto.YxSystemStoreQueryCriteria;
import com.boplus.mp.config.ShopKeyUtils;
import com.boplus.utils.OrderUtil;
import com.boplus.utils.RedisUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
* @author
* @date 2020-03-03
*/
@Api(tags = "门店管理")
@RestController
@RequestMapping("/api/yxSystemStore")
public class SystemStoreController {

    private final YxSystemStoreService yxSystemStoreService;
    private final IGenerator generator;
    public SystemStoreController(YxSystemStoreService yxSystemStoreService, IGenerator generator) {
        this.yxSystemStoreService = yxSystemStoreService;
        this.generator = generator;
    }


    @Log("所有门店")
    @ApiOperation("所有门店")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('yxSystemStore:list')")
    public ResponseEntity<Object>  getAll(YxSystemStoreQueryCriteria criteria) {
        return new ResponseEntity<>(yxSystemStoreService.queryAll(criteria),HttpStatus.OK);
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('yxSystemStore:list')")
    public void download(HttpServletResponse response, YxSystemStoreQueryCriteria criteria) throws IOException {
        yxSystemStoreService.download(generator.convert(yxSystemStoreService.queryAll(criteria), YxSystemStoreDto.class), response);
    }

    @GetMapping
    @Log("查询门店")
    @ApiOperation("查询门店")
    @PreAuthorize("@el.check('yxSystemStore:list')")
    public ResponseEntity<Object> getYxSystemStores(YxSystemStoreQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(yxSystemStoreService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping(value = "/getL")
    @Log("获取经纬度")
    @ApiOperation("获取经纬度")
    @PreAuthorize("@el.check('yxSystemStore:getl')")
    public ResponseEntity<Object> create(@Validated @RequestBody String jsonStr){
        String key = RedisUtil.get(ShopKeyUtils.getTengXunMapKey());
        if(StrUtil.isBlank(key)) throw  new BadRequestException("请先配置腾讯地图key");
        JSONObject jsonObject = JSON.parseObject(jsonStr);
        String addr = jsonObject.getString("addr");
        String url = StrUtil.format("?address={}&key={}",addr,key);
        String json = HttpUtil.get(ShopConstants.QQ_MAP_URL+url);
        return new ResponseEntity<>(json,HttpStatus.CREATED);
    }

    @PostMapping
    @Log("新增门店")
    @ApiOperation("新增门店")
    @PreAuthorize("@el.check('yxSystemStore:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody YxSystemStore resources){
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        resources.setAddTime(OrderUtil.getSecondTimestampTwo());
        return new ResponseEntity<>(yxSystemStoreService.save(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改门店")
    @ApiOperation("修改门店")
    @PreAuthorize("@el.check('yxSystemStore:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody YxSystemStore resources){
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        yxSystemStoreService.saveOrUpdate(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除门店")
    @ApiOperation("删除门店")
    @PreAuthorize("@el.check('yxSystemStore:del')")
    @DeleteMapping
    public ResponseEntity<Object> deleteAll(@RequestBody Integer[] ids) {
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        yxSystemStoreService.removeByIds(new ArrayList<>(Arrays.asList(ids)));
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
