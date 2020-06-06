/**
 * Copyright (C) 2018-2020
 * All rights reserved, Designed By www.yixiang.co

 */
package com.boplus.modules.shop.service.mapper;

import com.boplus.common.mapper.CoreMapper;
import com.boplus.modules.shop.domain.YxStoreCart;
import com.boplus.modules.shop.service.dto.CountDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
* @author
* @date 2020-05-12
*/
@Repository
@Mapper
public interface StoreCartMapper extends CoreMapper<YxStoreCart> {
    @Select("SELECT t.cate_name as catename from yx_store_cart c  " +
            "LEFT JOIN yx_store_product p on c.product_id = p.id  " +
            "LEFT JOIN yx_store_category t on p.cate_id = t.id " +
            "WHERE c.is_pay = 1")
    List<CountDto> findCateName();
}
