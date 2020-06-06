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
import com.boplus.modules.shop.domain.BopMaterial;
import com.boplus.modules.shop.service.BopMaterialService;
import com.boplus.modules.shop.service.dto.BopMaterialQueryCriteria;
import com.boplus.modules.shop.service.dto.BopMaterialDto;
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
@Api(tags = "BopMaterial管理")
@RestController
@RequestMapping("/api/bopMaterial")
public class BopMaterialController {

    private final BopMaterialService bopMaterialService;
    private final IGenerator generator;


    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('admin','bopMaterial:list')")
    public void download(HttpServletResponse response, BopMaterialQueryCriteria criteria) throws IOException {
        bopMaterialService.download(generator.convert(bopMaterialService.queryAll(criteria), BopMaterialDto.class), response);
    }

    @GetMapping
    @Log("查询BopMaterial")
    @ApiOperation("查询BopMaterial")
    @PreAuthorize("@el.check('admin','bopMaterial:list')")
    public ResponseEntity<Object> getBopMaterials(BopMaterialQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(bopMaterialService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增BopMaterial")
    @ApiOperation("新增BopMaterial")
    @PreAuthorize("@el.check('admin','bopMaterial:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BopMaterial resources){
        return new ResponseEntity<>(bopMaterialService.save(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改BopMaterial")
    @ApiOperation("修改BopMaterial")
    @PreAuthorize("@el.check('admin','bopMaterial:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BopMaterial resources){
        bopMaterialService.updateById(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除BopMaterial")
    @ApiOperation("删除BopMaterial")
    @PreAuthorize("@el.check('admin','bopMaterial:del')")
    @DeleteMapping
    public ResponseEntity<Object> deleteAll(@RequestBody Integer[] ids) {
        Arrays.asList(ids).forEach(id->{
            bopMaterialService.removeById(id);
        });
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @Log("删除BopMaterial")
    @ApiOperation("删除BopMaterial")
    @PreAuthorize("@el.check('admin','bopMaterial:del')")
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Object> deleteAll(@PathVariable Integer id) {
        bopMaterialService.removeById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
