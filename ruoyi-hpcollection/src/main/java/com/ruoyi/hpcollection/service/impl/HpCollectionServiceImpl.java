package com.ruoyi.hpcollection.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpcollection.mapper.HpCollectionMapper;
import com.ruoyi.hpcollection.domain.HpCollection;
import com.ruoyi.hpcollection.service.IHpCollectionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 收藏管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpCollectionServiceImpl implements IHpCollectionService {
    @Autowired
    private HpCollectionMapper hpCollectionMapper;

    /**
     * 查询收藏管理
     *
     * @param id 收藏管理主键
     * @return 收藏管理
     */
    @Override
    public HpCollection selectHpCollectionById(Long id) {
        return hpCollectionMapper.selectHpCollectionById(id);
    }

    /**
     * 查询收藏管理列表
     *
     * @param hpCollection 收藏管理
     * @return 收藏管理
     */
    @Override
    public List<HpCollection> selectHpCollectionList(HpCollection hpCollection) {
        return hpCollectionMapper.selectHpCollectionList(hpCollection);
    }

    /**
     * 新增收藏管理
     *
     * @param hpCollection 收藏管理
     * @return 结果
     */
    @Override
    public int insertHpCollection(HpCollection hpCollection) {
        return hpCollectionMapper.insertHpCollection(hpCollection);
    }

    /**
     * 修改收藏管理
     *
     * @param hpCollection 收藏管理
     * @return 结果
     */
    @Override
    public int updateHpCollection(HpCollection hpCollection) {
        return hpCollectionMapper.updateHpCollection(hpCollection);
    }

    /**
     * 批量删除收藏管理
     *
     * @param ids 需要删除的收藏管理主键
     * @return 结果
     */
    @Override
    public int deleteHpCollectionByIds(String ids) {
        return hpCollectionMapper.deleteHpCollectionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除收藏管理信息
     *
     * @param id 收藏管理主键
     * @return 结果
     */
    @Override
    public int deleteHpCollectionById(Long id) {
        return hpCollectionMapper.deleteHpCollectionById(id);
    }
}
