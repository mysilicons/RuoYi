package com.ruoyi.hporders.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单管理对象 hp_orders
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpOrders extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 订单ID
     */
    @Excel(name = "订单ID")
    private Long id;

    /**
     * 订单号
     */
    @Excel(name = "订单号")
    private String orderNumber;

    /**
     * 用户ID
     */
    @Excel(name = "用户ID")
    private Long userId;

    /**
     * 商家ID
     */
    @Excel(name = "商家ID")
    private Long merchantId;

    /**
     * 地址ID
     */
    @Excel(name = "地址ID")
    private Long addressId;

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
     * 图片地址
     */
    @Excel(name = "图片地址")
    private String image;

    /**
     * 下单时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "下单时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date orderTime;

    /**
     * 服务时间
     */
    @Excel(name = "服务时间")
    private String serverTime;

    /**
     * 订单状态
     */
    @Excel(name = "订单状态")
    private String curStatus;

    /**
     * 姓名
     */
    @Excel(name = "姓名")
    private String username;

    /**
     * 电话
     */
    @Excel(name = "电话")
    private String phone;

    /**
     * 地址
     */
    @Excel(name = "地址")
    private String address;

    /**
     * 用户可见性
     */
    @Excel(name = "用户可见性")
    private Integer userVisible;

    /**
     * 商家可见性
     */
    @Excel(name = "商家可见性")
    private Integer merchantVisible;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getMerchantId() {
        return merchantId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public Long getAddressId() {
        return addressId;
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

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setServerTime(String serverTime) {
        this.serverTime = serverTime;
    }

    public String getServerTime() {
        return serverTime;
    }

    public void setCurStatus(String curStatus) {
        this.curStatus = curStatus;
    }

    public String getCurStatus() {
        return curStatus;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setUserVisible(Integer userVisible) {
        this.userVisible = userVisible;
    }

    public Integer getUserVisible() {
        return userVisible;
    }

    public void setMerchantVisible(Integer merchantVisible) {
        this.merchantVisible = merchantVisible;
    }

    public Integer getMerchantVisible() {
        return merchantVisible;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("orderNumber", getOrderNumber())
                .append("userId", getUserId())
                .append("merchantId", getMerchantId())
                .append("addressId", getAddressId())
                .append("classification2Id", getClassification2Id())
                .append("classification2Name", getClassification2Name())
                .append("serviceId", getServiceId())
                .append("name", getName())
                .append("content", getContent())
                .append("price", getPrice())
                .append("image", getImage())
                .append("orderTime", getOrderTime())
                .append("serverTime", getServerTime())
                .append("curStatus", getCurStatus())
                .append("username", getUsername())
                .append("phone", getPhone())
                .append("address", getAddress())
                .append("userVisible", getUserVisible())
                .append("merchantVisible", getMerchantVisible())
                .toString();
    }
}
