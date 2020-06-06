package com.boplus.modules.shop.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author mingming
 * @date 2020-05-31
 */
@Data
public class BopVipSummaryDto implements Serializable {
    /** ID */
    private Integer id;

    /** VIP卡 */
    private String name;
}
