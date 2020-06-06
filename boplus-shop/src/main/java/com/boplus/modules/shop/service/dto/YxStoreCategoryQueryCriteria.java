/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.dto;

import com.boplus.annotation.Query;
import lombok.Data;

/**
* @author
* @date 2020-05-12
*/
@Data
public class YxStoreCategoryQueryCriteria{
    @Query
    private String cateName;
}
