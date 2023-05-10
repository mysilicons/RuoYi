package com.ruoyi.hpclassification.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 分类管理对象 hp_classification
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public class HpClassification extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 分类ID
     */
    @Excel(name = "分类ID")
    private Long id;

    /**
     * 一级分类ID
     */
    @Excel(name = "一级分类ID")
    private Long classification1Id;

    /**
     * 一级分类名
     */
    @Excel(name = "一级分类名")
    private String classification1Name;

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

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setClassification1Id(Long classification1Id) {
        this.classification1Id = classification1Id;
    }

    public Long getClassification1Id() {
        return classification1Id;
    }

    public void setClassification1Name(String classification1Name) {
        this.classification1Name = classification1Name;
    }

    public String getClassification1Name() {
        return classification1Name;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("classification1Id", getClassification1Id())
                .append("classification1Name", getClassification1Name())
                .append("classification2Id", getClassification2Id())
                .append("classification2Name", getClassification2Name())
                .toString();
    }
}
