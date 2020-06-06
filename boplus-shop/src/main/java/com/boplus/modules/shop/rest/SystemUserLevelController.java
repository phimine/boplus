/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.rest;

import com.boplus.logging.aop.log.Log;
import com.boplus.modules.shop.domain.YxSystemUserLevel;
import com.boplus.modules.shop.service.YxSystemUserLevelService;
import com.boplus.modules.shop.service.dto.YxSystemUserLevelQueryCriteria;
import com.boplus.utils.OrderUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
* @author
* @date 2019-12-04
*/
@Api(tags = "商城:用户等级管理")
@RestController
@RequestMapping("api")
public class SystemUserLevelController {

    private final YxSystemUserLevelService yxSystemUserLevelService;

    public SystemUserLevelController(YxSystemUserLevelService yxSystemUserLevelService) {
        this.yxSystemUserLevelService = yxSystemUserLevelService;
    }

    @Log("查询")
    @ApiOperation(value = "查询")
    @GetMapping(value = "/yxSystemUserLevel")
    @PreAuthorize("@el.check('admin','YXSYSTEMUSERLEVEL_ALL','YXSYSTEMUSERLEVEL_SELECT')")
    public ResponseEntity getYxSystemUserLevels(YxSystemUserLevelQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity(yxSystemUserLevelService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @Log("新增")
    @ApiOperation(value = "新增")
    @PostMapping(value = "/yxSystemUserLevel")
    @PreAuthorize("@el.check('admin','YXSYSTEMUSERLEVEL_ALL','YXSYSTEMUSERLEVEL_CREATE')")
    public ResponseEntity create(@Validated @RequestBody YxSystemUserLevel resources){
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        resources.setAddTime(OrderUtil.getSecondTimestampTwo());
        return new ResponseEntity(yxSystemUserLevelService.save(resources),HttpStatus.CREATED);
    }

    @Log("修改")
    @ApiOperation(value = "修改")
    @PutMapping(value = "/yxSystemUserLevel")
    @PreAuthorize("@el.check('admin','YXSYSTEMUSERLEVEL_ALL','YXSYSTEMUSERLEVEL_EDIT')")
    public ResponseEntity update(@Validated @RequestBody YxSystemUserLevel resources){
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        yxSystemUserLevelService.saveOrUpdate(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @Log("删除")
    @ApiOperation(value = "删除")
    @DeleteMapping(value = "/yxSystemUserLevel/{id}")
    @PreAuthorize("@el.check('admin','YXSYSTEMUSERLEVEL_ALL','YXSYSTEMUSERLEVEL_DELETE')")
    public ResponseEntity delete(@PathVariable Integer id){
        //if(StrUtil.isNotEmpty("22")) throw new BadRequestException("演示环境禁止操作");
        yxSystemUserLevelService.removeById(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}
