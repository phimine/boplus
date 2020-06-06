/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.param;

import lombok.Data;

import java.io.Serializable;

/**
 * @ClassName ExpressParam
 * @author
 * @Date 2019/12/9
 **/
@Data
public class ExpressParam implements Serializable {
    ////@NotBlank()
    private String orderCode;
    private String shipperCode;
    private String logisticCode;
}
