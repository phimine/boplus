/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.dto;

import lombok.Data;
import java.math.BigDecimal;
import java.io.Serializable;

/**
* @author mingming
* @date 2020-05-31
*/
@Data
public class BopVipPriceDto implements Serializable {

    private Integer id;

    /** 会员名称 */
    private String name;

    /** 购买金额 */
    private BigDecimal price;

    /** 实际金额 */
    private BigDecimal realPrice;

    /** VIP时效 */
    private Integer period;

    /** 添加时间 */
    private Long addTime;

    /** 是否删除.1=删除,0=未删除 */
    private Integer isDel;
}
