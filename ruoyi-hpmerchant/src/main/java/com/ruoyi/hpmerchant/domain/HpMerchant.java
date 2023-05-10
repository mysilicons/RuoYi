package com.ruoyi.hpmerchant.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商家管理对象 hp_merchant
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpMerchant extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 商家ID
     */
    @Excel(name = "商家ID")
    private Long id;

    /**
     * 商家名
     */
    @Excel(name = "商家名")
    private String name;

    /**
     * 商家密码
     */
    @Excel(name = "商家密码")
    private String password;

    /**
     * 商家令牌
     */
    @Excel(name = "商家令牌")
    private String token;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getToken() {
        return token;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("password", getPassword())
                .append("token", getToken())
                .toString();
    }
}
