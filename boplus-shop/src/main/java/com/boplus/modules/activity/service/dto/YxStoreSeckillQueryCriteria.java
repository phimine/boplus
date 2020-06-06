/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.activity.service.dto;

import com.boplus.annotation.Query;
import lombok.Data;

/**
* @author
* @date 2020-05-13
*/
@Data
public class YxStoreSeckillQueryCriteria{


    // 模糊
    @Query(type = Query.Type.INNER_LIKE)
    private String title;
}
