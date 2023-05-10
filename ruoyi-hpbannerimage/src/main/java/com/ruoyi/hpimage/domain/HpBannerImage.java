package com.ruoyi.hpimage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 轮播图管理对象 hp_banner_image
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpBannerImage extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 轮播图ID
     */
    @Excel(name = "轮播图ID")
    private Long id;

    /**
     * 轮播图地址
     */
    @Excel(name = "轮播图地址")
    private String url;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("url", getUrl())
                .toString();
    }
}
