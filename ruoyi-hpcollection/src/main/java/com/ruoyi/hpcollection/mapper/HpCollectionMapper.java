package com.ruoyi.hpcollection.mapper;

import java.util.List;

import com.ruoyi.hpcollection.domain.HpCollection;

/**
 * 收藏管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface HpCollectionMapper {
    /**
     * 查询收藏管理
     *
     * @param id 收藏管理主键
     * @return 收藏管理
     */
    public HpCollection selectHpCollectionById(Long id);

    /**
     * 查询收藏管理列表
     *
     * @param hpCollection 收藏管理
     * @return 收藏管理集合
     */
    public List<HpCollection> selectHpCollectionList(HpCollection hpCollection);

    /**
     * 新增收藏管理
     *
     * @param hpCollection 收藏管理
     * @return 结果
     */
    public int insertHpCollection(HpCollection hpCollection);

    /**
     * 修改收藏管理
     *
     * @param hpCollection 收藏管理
     * @return 结果
     */
    public int updateHpCollection(HpCollection hpCollection);

    /**
     * 删除收藏管理
     *
     * @param id 收藏管理主键
     * @return 结果
     */
    public int deleteHpCollectionById(Long id);

    /**
     * 批量删除收藏管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHpCollectionByIds(String[] ids);
}
