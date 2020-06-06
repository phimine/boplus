/**
* Copyright (C) 2018-2020
* All rights reserved, Designed By www.yixiang.co
* 注意：
* 本软件为www.yixiang.co开发研制
*/
package com.boplus.modules.shop.domain;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.validation.constraints.*;
import java.io.Serializable;

/**
* @author mingming
* @date 2020-05-31
*/
@Data
@TableName("bop_user")
public class BopUser implements Serializable {

    /** 用户id */
    @TableId
    private Integer uid;


    /** 用户账户 */
    @NotBlank
    private String username;


    /** 用户密码 */
    @NotBlank
    private String password;


    /** 真实姓名 */
    private String realName;


    /** 生日 */
    private Long birthday;


    /** 身份证号码 */
    private String cardId;


    /** 用户备注 */
    private String mark;


    /** 用户昵称 */
    private String nickname;


    /** 用户头像 */
    private String avatar;


    /** 手机号码 */
    @NotBlank
    private String phone;


    /** 电子邮箱 */
    @NotBlank
    private String email;


    /** 所在城市 */
    private String city;


    /** 工作单位 */
    @NotBlank
    private String company;


    /** 职位 */
    @NotBlank
    private String position;


    /** 关注领域 */
    private String concern;


    /** 添加时间 */
    @NotNull
    private Long addTime;


    /** 添加ip */
    private String addIp;


    /** 最后一次登录时间 */
    @NotNull
    private Long lastTime;


    /** 最后一次登录ip */
    private String lastIp;


    /** 1为正常，0为禁止 */
    @NotNull
    private Integer status;


    /** 等级: 0为普通会员，1为VIP */
    @NotNull
    private Integer level;


    /** vip有效时间 */
    private Long vipValidDate;


    /** 是否永久vip */
    private Integer isForever;


    /** 用户类型 */
    @NotBlank
    private String userType;


    /** 用户登陆类型，h5,wechat,routine */
    @NotBlank
    private String loginType;


    public void copy(BopUser source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
