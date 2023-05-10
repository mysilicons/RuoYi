package com.ruoyi.hpclassification.service;

import java.util.List;

import com.ruoyi.hpclassification.domain.HpClassification;

/**
 * 分类管理Service接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface IHpClassificationService {
    /**
     * 查询分类管理
     *
     * @param id 分类管理主键
     * @return 分类管理
     */
    public HpClassification selectHpClassificationById(Long id);

    /**
     * 查询分类管理列表
     *
     * @param hpClassification 分类管理
     * @return 分类管理集合
     */
    public List<HpClassification> selectHpClassificationList(HpClassification hpClassification);

    /**
     * 新增分类管理
     *
     * @param hpClassification 分类管理
     * @return 结果
     */
    public int insertHpClassification(HpClassification hpClassification);

    /**
     * 修改分类管理
     *
     * @param hpClassification 分类管理
     * @return 结果
     */
    public int updateHpClassification(HpClassification hpClassification);

    /**
     * 批量删除分类管理
     *
     * @param ids 需要删除的分类管理主键集合
     * @return 结果
     */
    public int deleteHpClassificationByIds(String ids);

    /**
     * 删除分类管理信息
     *
     * @param id 分类管理主键
     * @return 结果
     */
    public int deleteHpClassificationById(Long id);
}
