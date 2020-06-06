/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.domain;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.validation.constraints.*;
import java.sql.Timestamp;
import java.io.Serializable;

/**
* @author mingming
* @date 2020-05-31
*/
@Data
@TableName("bop_material")
public class BopMaterial implements Serializable {

    /** PK */
    @TableId
    private Integer id;


    /** 类型1、图片；2、视频 */
    @NotNull
    private Integer type;


    /** 素材名 */
    @NotBlank
    private String name;


    /** 素材链接 */
    private String url;


    /** 逻辑删除标记（0：显示；1：隐藏） */
    @NotNull
    private Boolean isDel;


    /** 创建时间 */
    @NotNull
    @TableField(fill= FieldFill.INSERT)
    private Timestamp createTime;


    /** 创建者ID */
    private Integer creatorId;

    /** 创建者 */
    private String creator;

    public void copy(BopMaterial source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
