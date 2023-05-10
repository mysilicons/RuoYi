package com.ruoyi.hpservice.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 服务管理对象 hp_service
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpService extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 服务ID
     */
    @Excel(name = "服务ID")
    private Long id;

    /**
     * 服务一级分类ID
     */
    @Excel(name = "服务一级分类ID")
    private Long classification1;

    /**
     * 服务二级分类ID
     */
    @Excel(name = "服务二级分类ID")
    private Long classification2;

    /**
     * 服务图片地址
     */
    @Excel(name = "服务图片地址")
    private String imageUrl;

    /**
     * 服务名称
     */
    @Excel(name = "服务名称")
    private String title;

    /**
     * 服务详情
     */
    @Excel(name = "服务详情")
    private String content;

    /**
     * 服务价格
     */
    @Excel(name = "服务价格")
    private String price;

    /**
     * 城市
     */
    @Excel(name = "城市")
    private String city;

    /**
     * 商家ID
     */
    @Excel(name = "商家ID")
    private Long merchantId;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setClassification1(Long classification1) {
        this.classification1 = classification1;
    }

    public Long getClassification1() {
        return classification1;
    }

    public void setClassification2(Long classification2) {
        this.classification2 = classification2;
    }

    public Long getClassification2() {
        return classification2;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPrice() {
        return price;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getMerchantId() {
        return merchantId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("classification1", getClassification1())
                .append("classification2", getClassification2())
                .append("imageUrl", getImageUrl())
                .append("title", getTitle())
                .append("content", getContent())
                .append("price", getPrice())
                .append("city", getCity())
                .append("merchantId", getMerchantId())
                .toString();
    }
}
