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
public class YxUserQueryCriteria{

    // 模糊
    @Query(type = Query.Type.INNER_LIKE)
    private String nickname;

    // 模糊
    @Query(type = Query.Type.INNER_LIKE)
    private String phone;

    @Query
    private Integer isPromoter;

    @Query
    private String userType;
}
