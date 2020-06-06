/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.domain;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.validation.constraints.*;
import java.math.BigDecimal;
import java.io.Serializable;

/**
* @author mingming
* @date 2020-05-31
*/
@Data
@TableName("bop_vip_price")
public class BopVipPrice implements Serializable {

    @TableId
    private Integer id;


    /** 会员名称 */
    @NotBlank
    private String name;


    /** 购买金额 */
    @NotNull
    private BigDecimal price;


    /** 实际金额 */
    private BigDecimal realPrice;

    /** VIP时效 */
    @NotNull
    private Integer period;

    /** 添加时间 */
    @NotNull
    private Long addTime;


    /** 是否删除.1=删除,0=未删除 */
    @NotNull
    private Integer isDel;


    public void copy(BopVipPrice source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
