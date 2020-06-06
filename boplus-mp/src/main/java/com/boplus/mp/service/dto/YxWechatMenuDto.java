/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.mp.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
* @author
* @date 2020-05-12
*/
@Data
public class YxWechatMenuDto implements Serializable {

    private String key;

    /** 缓存数据 */
    private String result;

    /** 缓存时间 */
    private Integer addTime;
}
