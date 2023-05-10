package com.ruoyi.hpclassification.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpclassification.mapper.HpClassificationMapper;
import com.ruoyi.hpclassification.domain.HpClassification;
import com.ruoyi.hpclassification.service.IHpClassificationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 分类管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpClassificationServiceImpl implements IHpClassificationService {
    @Autowired
    private HpClassificationMapper hpClassificationMapper;

    /**
     * 查询分类管理
     *
     * @param id 分类管理主键
     * @return 分类管理
     */
    @Override
    public HpClassification selectHpClassificationById(Long id) {
        return hpClassificationMapper.selectHpClassificationById(id);
    }

    /**
     * 查询分类管理列表
     *
     * @param hpClassification 分类管理
     * @return 分类管理
     */
    @Override
    public List<HpClassification> selectHpClassificationList(HpClassification hpClassification) {
        return hpClassificationMapper.selectHpClassificationList(hpClassification);
    }

    /**
     * 新增分类管理
     *
     * @param hpClassification 分类管理
     * @return 结果
     */
    @Override
    public int insertHpClassification(HpClassification hpClassification) {
        return hpClassificationMapper.insertHpClassification(hpClassification);
    }

    /**
     * 修改分类管理
     *
     * @param hpClassification 分类管理
     * @return 结果
     */
    @Override
    public int updateHpClassification(HpClassification hpClassification) {
        return hpClassificationMapper.updateHpClassification(hpClassification);
    }

    /**
     * 批量删除分类管理
     *
     * @param ids 需要删除的分类管理主键
     * @return 结果
     */
    @Override
    public int deleteHpClassificationByIds(String ids) {
        return hpClassificationMapper.deleteHpClassificationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除分类管理信息
     *
     * @param id 分类管理主键
     * @return 结果
     */
    @Override
    public int deleteHpClassificationById(Long id) {
        return hpClassificationMapper.deleteHpClassificationById(id);
    }
}
