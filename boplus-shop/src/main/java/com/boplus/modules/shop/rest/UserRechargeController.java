/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.rest;

import com.boplus.dozer.service.IGenerator;
import com.boplus.logging.aop.log.Log;
import com.boplus.modules.shop.domain.YxUserRecharge;
import com.boplus.modules.shop.service.YxUserRechargeService;
import com.boplus.modules.shop.service.dto.YxUserRechargeDto;
import com.boplus.modules.shop.service.dto.YxUserRechargeQueryCriteria;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
* @author
* @date 2020-03-02
*/
@Api(tags = "充值管理管理")
@RestController
@RequestMapping("/api/yxUserRecharge")
public class UserRechargeController {

    private final YxUserRechargeService yxUserRechargeService;
    private final IGenerator generator;
    public UserRechargeController(YxUserRechargeService yxUserRechargeService, IGenerator generator) {
        this.yxUserRechargeService = yxUserRechargeService;
        this.generator = generator;
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('yxUserRecharge:list')")
    public void download(HttpServletResponse response, YxUserRechargeQueryCriteria criteria) throws IOException {
        yxUserRechargeService.download(generator.convert(yxUserRechargeService.queryAll(criteria), YxUserRechargeDto.class), response);
    }

    @GetMapping
    @Log("查询充值管理")
    @ApiOperation("查询充值管理")
    @PreAuthorize("@el.check('yxUserRecharge:list')")
    public ResponseEntity<Object> getYxUserRecharges(YxUserRechargeQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(yxUserRechargeService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增充值管理")
    @ApiOperation("新增充值管理")
    @PreAuthorize("@el.check('yxUserRecharge:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody YxUserRecharge resources){
        return new ResponseEntity<>(yxUserRechargeService.save(resources),HttpStatus.CREATED);
    }



    @Log("删除充值管理")
    @ApiOperation("删除充值管理")
    @PreAuthorize("@el.check('yxUserRecharge:del')")
    @DeleteMapping
    public ResponseEntity<Object> deleteAll(@RequestBody Integer[] ids) {
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        yxUserRechargeService.removeByIds(new ArrayList<>(Arrays.asList(ids)));
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
