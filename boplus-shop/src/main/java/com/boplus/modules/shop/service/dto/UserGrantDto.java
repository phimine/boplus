/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.dto;

import lombok.Data;

import javax.validation.constraints.Min;
import java.io.Serializable;

/**
 * @ClassName UserGrantDto
 * @author
 * @Date 2019/12/4
 **/
@Data
public class UserGrantDto implements Serializable {
   //@NotNull(message = "参数缺失")
    private Integer uid;
    /** 用户账户 */
    private String username;
    /** 手机号 */
    private String phone;
    //@NotNull(message = "vip时限必填")
    private Integer period;
}
