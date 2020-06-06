/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.activity.rest;

import cn.hutool.core.util.NumberUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.boplus.dozer.service.IGenerator;
import com.boplus.exception.BadRequestException;
import com.boplus.logging.aop.log.Log;
import com.boplus.modules.activity.domain.YxUserExtract;
import com.boplus.modules.activity.service.YxUserExtractService;
import com.boplus.modules.activity.service.dto.YxUserExtractQueryCriteria;
import com.boplus.modules.shop.domain.YxUser;
import com.boplus.modules.shop.domain.YxUserBill;
import com.boplus.modules.shop.domain.YxWechatUser;
import com.boplus.modules.shop.service.YxUserBillService;
import com.boplus.modules.shop.service.YxUserService;
import com.boplus.modules.shop.service.YxWechatUserService;
import com.boplus.modules.shop.service.dto.YxUserDto;
import com.boplus.modules.shop.service.dto.YxWechatUserDto;
import com.boplus.mp.service.YxPayService;
import com.boplus.utils.OrderUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.binarywang.wxpay.exception.WxPayException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

/**
* @author
* @date 2019-11-14
*/
@Api(tags = "商城:提现管理")
@RestController
@RequestMapping("api")
public class UserExtractController {

    private final YxUserExtractService yxUserExtractService;
    private final  YxUserService yxUserService;
    private final YxUserBillService yxUserBillService;
    private final YxWechatUserService wechatUserService;
    private final YxPayService payService;
    private final IGenerator generator;

    public UserExtractController(YxUserExtractService yxUserExtractService, YxUserService yxUserService,
                                 YxUserBillService yxUserBillService, YxWechatUserService wechatUserService,
                                 YxPayService payService, IGenerator generator) {
        this.yxUserExtractService = yxUserExtractService;
        this.yxUserService = yxUserService;
        this.yxUserBillService = yxUserBillService;
        this.wechatUserService = wechatUserService;
        this.payService = payService;
        this.generator = generator;
    }

    @Log("查询")
    @ApiOperation(value = "查询")
    @GetMapping(value = "/yxUserExtract")
    @PreAuthorize("@el.check('admin','YXUSEREXTRACT_ALL','YXUSEREXTRACT_SELECT')")
    public ResponseEntity getYxUserExtracts(YxUserExtractQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity(yxUserExtractService.queryAll(criteria,pageable),HttpStatus.OK);
    }



    @Log("修改")
    @ApiOperation(value = "修改审核")
    @PutMapping(value = "/yxUserExtract")
    @PreAuthorize("@el.check('admin','YXUSEREXTRACT_ALL','YXUSEREXTRACT_EDIT')")
    public ResponseEntity update(@Validated @RequestBody YxUserExtract resources){
        if(StrUtil.isEmpty(resources.getStatus().toString())){
            throw new BadRequestException("请选择审核状态");
        }
        if(resources.getStatus() != -1 && resources.getStatus() != 1){
            throw new BadRequestException("请选择审核状态");
        }
        if(resources.getStatus() == -1){
            if(StrUtil.isEmpty(resources.getFailMsg())){
                throw new BadRequestException("请填写失败原因");
            }
            String mark = "提现失败,退回佣金"+resources.getExtractPrice()+"元";
            YxUserDto userDTO = generator.convert(yxUserService.getOne(new QueryWrapper<YxUser>().eq("uid",resources.getUid())),YxUserDto.class);

            //增加流水
            YxUserBill userBill = new YxUserBill();
            userBill.setTitle("提现失败");
            userBill.setUid(resources.getUid());
            userBill.setCategory("now_money");
            userBill.setType("extract");
            userBill.setNumber(resources.getExtractPrice());
            userBill.setLinkId(resources.getId().toString());
            userBill.setBalance(NumberUtil.add(userDTO.getBrokeragePrice(),resources.getExtractPrice()));
            userBill.setMark(mark);
            userBill.setStatus(1);
            userBill.setAddTime(OrderUtil.getSecondTimestampTwo());
            userBill.setPm(1);
            yxUserBillService.save(userBill);

            //返回提现金额
            yxUserService.incBrokeragePrice(resources.getExtractPrice().doubleValue()
                    ,resources.getUid());

            resources.setFailTime(OrderUtil.getSecondTimestampTwo());

        }
        //todo 此处为企业付款，没经过测试
        boolean isTest = true;
        if(!isTest){
            YxWechatUserDto wechatUser =  generator.convert(wechatUserService.getOne(new QueryWrapper<YxWechatUser>().eq("uid",resources.getUid())),YxWechatUserDto.class);
            if(ObjectUtil.isNotNull(wechatUser)){
                try {
                    payService.entPay(wechatUser.getOpenid(),resources.getId().toString(),
                            resources.getRealName(),
                            resources.getExtractPrice().multiply(new BigDecimal(100)).intValue());
                } catch (WxPayException e) {
                    throw new BadRequestException(e.getMessage());
                }
            }else{
                throw new BadRequestException("不是微信用户无法退款");
            }

        }
        yxUserExtractService.saveOrUpdate(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }


}
