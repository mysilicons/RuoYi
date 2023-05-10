package com.ruoyi.hpcollection.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 收藏管理对象 hp_collection
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpCollection extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 收藏ID
     */
    @Excel(name = "收藏ID")
    private Long id;

    /**
     * 用户ID
     */
    @Excel(name = "用户ID")
    private Long userId;

    /**
     * 二级分类ID
     */
    @Excel(name = "二级分类ID")
    private Long classification2Id;

    /**
     * 二级分类名
     */
    @Excel(name = "二级分类名")
    private String classification2Name;

    /**
     * 服务ID
     */
    @Excel(name = "服务ID")
    private Long serviceId;

    /**
     * 服务名
     */
    @Excel(name = "服务名")
    private String name;

    /**
     * 服务价格
     */
    @Excel(name = "服务价格")
    private Long price;

    /**
     * 图片地址
     */
    @Excel(name = "图片地址")
    private String image;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setClassification2Id(Long classification2Id) {
        this.classification2Id = classification2Id;
    }

    public Long getClassification2Id() {
        return classification2Id;
    }

    public void setClassification2Name(String classification2Name) {
        this.classification2Name = classification2Name;
    }

    public String getClassification2Name() {
        return classification2Name;
    }

    public void setServiceId(Long serviceId) {
        this.serviceId = serviceId;
    }

    public Long getServiceId() {
        return serviceId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getPrice() {
        return price;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("userId", getUserId())
                .append("classification2Id", getClassification2Id())
                .append("classification2Name", getClassification2Name())
                .append("serviceId", getServiceId())
                .append("name", getName())
                .append("price", getPrice())
                .append("image", getImage())
                .toString();
    }
}
