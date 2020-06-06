/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.rest;
import java.util.Arrays;
import com.boplus.dozer.service.IGenerator;
import lombok.AllArgsConstructor;
import com.boplus.logging.aop.log.Log;
import com.boplus.modules.shop.domain.BopVipPrice;
import com.boplus.modules.shop.service.BopVipPriceService;
import com.boplus.modules.shop.service.dto.BopVipPriceQueryCriteria;
import com.boplus.modules.shop.service.dto.BopVipPriceDto;
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
@Api(tags = "BopVipPrice管理")
@RestController
@RequestMapping("/api/bopVipPrice")
public class BopVipPriceController {

    private final BopVipPriceService bopVipPriceService;
    private final IGenerator generator;


    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('admin','bopVipPrice:list')")
    public void download(HttpServletResponse response, BopVipPriceQueryCriteria criteria) throws IOException {
        bopVipPriceService.download(generator.convert(bopVipPriceService.queryAll(criteria), BopVipPriceDto.class), response);
    }

    @GetMapping
    @Log("查询BopVipPrice")
    @ApiOperation("查询BopVipPrice")
    @PreAuthorize("@el.check('admin','bopVipPrice:list')")
    public ResponseEntity<Object> getBopVipPrices(BopVipPriceQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(bopVipPriceService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @Log("查询BopVipPrice")
    @ApiOperation("查询BopVipPrice")
    @GetMapping(value = "/listSummary")
    @PreAuthorize("@el.check('admin','bopVipPrice:list')")
    public ResponseEntity<Object> listSummary() {
        return new ResponseEntity<>(bopVipPriceService.querySummary(),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增BopVipPrice")
    @ApiOperation("新增BopVipPrice")
    @PreAuthorize("@el.check('admin','bopVipPrice:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BopVipPrice resources){
        return new ResponseEntity<>(bopVipPriceService.save(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改BopVipPrice")
    @ApiOperation("修改BopVipPrice")
    @PreAuthorize("@el.check('admin','bopVipPrice:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BopVipPrice resources){
        bopVipPriceService.updateById(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除BopVipPrice")
    @ApiOperation("删除BopVipPrice")
    @PreAuthorize("@el.check('admin','bopVipPrice:del')")
    @DeleteMapping
    public ResponseEntity<Object> deleteAll(@RequestBody Integer[] ids) {
        Arrays.asList(ids).forEach(id->{
            bopVipPriceService.removeById(id);
        });
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @Log("删除VIP卡")
    @ApiOperation(value = "删除VIP卡")
    @DeleteMapping(value = "/{id}")
    @PreAuthorize("@el.check('admin','bopVipPrice:del')")
    public ResponseEntity delete(@PathVariable Integer id){
        bopVipPriceService.removeById(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}
