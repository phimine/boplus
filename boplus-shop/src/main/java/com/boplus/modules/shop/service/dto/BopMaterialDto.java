/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.service.dto;

import lombok.Data;
import java.sql.Timestamp;
import java.io.Serializable;

/**
* @author mingming
* @date 2020-05-31
*/
@Data
public class BopMaterialDto implements Serializable {

    /** PK */
    private Integer id;

    /** 类型1、图片；2、视频 */
    private Integer type;

    /** 素材名 */
    private String name;

    /** 素材链接 */
    private String url;

    /** 逻辑删除标记（0：显示；1：隐藏） */
    private Boolean isDel;

    /** 创建时间 */
    private Timestamp createTime;

    /** 创建者ID */
    private Integer creatorId;

    /** 创建者 */
    private String creator;
}
