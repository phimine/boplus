/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.rest;
import java.util.Arrays;
import com.boplus.dozer.service.IGenerator;
import com.boplus.modules.shop.service.dto.UserGrantDto;
import lombok.AllArgsConstructor;
import com.boplus.logging.aop.log.Log;
import com.boplus.modules.shop.domain.BopUser;
import com.boplus.modules.shop.service.BopUserService;
import com.boplus.modules.shop.service.dto.BopUserQueryCriteria;
import com.boplus.modules.shop.service.dto.BopUserDto;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author mingming
* @date 2020-05-31
*/
@AllArgsConstructor
@Api(tags = "BoplusUserController管理")
@RestController
@RequestMapping("/api/bopUser")
public class BopUserController {

    private final BopUserService bopUserService;
    private final IGenerator generator;


    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('admin','bopUser:list')")
    public void download(HttpServletResponse response, BopUserQueryCriteria criteria) throws IOException {
        bopUserService.download(generator.convert(bopUserService.queryAll(criteria), BopUserDto.class), response);
    }

    @GetMapping
    @Log("查询会员列表")
    @ApiOperation("查询会员列表")
    @PreAuthorize("@el.check('admin','bopUser:list')")
    public ResponseEntity<Object> getBopUsers(BopUserQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(bopUserService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @PostMapping
    @Log("新增会员")
    @ApiOperation("新增会员")
    @PreAuthorize("@el.check('admin','bopUser:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BopUser resources) {
        return new ResponseEntity<>(bopUserService.save(resources), HttpStatus.CREATED);
    }

    @PutMapping
    @Log("编辑会员信息")
    @ApiOperation("编辑会员信息")
    @PreAuthorize("@el.check('admin','bopUser:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BopUser resources) {
        bopUserService.updateById(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除会员")
    @ApiOperation("删除会员")
    @PreAuthorize("@el.check('admin','bopUser:del')")
    @DeleteMapping
    public ResponseEntity<Object> deleteAll(@RequestBody Integer[] ids) {
        Arrays.asList(ids).forEach(id -> {
            bopUserService.removeById(id);
        });
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation(value = "升级VIP")
    @PostMapping(value = "/grant")
    @PreAuthorize("@el.check('admin','bopUser:edit')")
    public ResponseEntity<Object> grant(@Validated @RequestBody UserGrantDto userGrantDto) {
        bopUserService.grant(userGrantDto);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
