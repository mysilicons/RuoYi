package com.ruoyi.hpimage.mapper;

import java.util.List;

import com.ruoyi.hpimage.domain.HpBannerImage;

/**
 * 轮播图管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface HpBannerImageMapper {
    /**
     * 查询轮播图管理
     *
     * @param id 轮播图管理主键
     * @return 轮播图管理
     */
    public HpBannerImage selectHpBannerImageById(Long id);

    /**
     * 查询轮播图管理列表
     *
     * @param hpBannerImage 轮播图管理
     * @return 轮播图管理集合
     */
    public List<HpBannerImage> selectHpBannerImageList(HpBannerImage hpBannerImage);

    /**
     * 新增轮播图管理
     *
     * @param hpBannerImage 轮播图管理
     * @return 结果
     */
    public int insertHpBannerImage(HpBannerImage hpBannerImage);

    /**
     * 修改轮播图管理
     *
     * @param hpBannerImage 轮播图管理
     * @return 结果
     */
    public int updateHpBannerImage(HpBannerImage hpBannerImage);

    /**
     * 删除轮播图管理
     *
     * @param id 轮播图管理主键
     * @return 结果
     */
    public int deleteHpBannerImageById(Long id);

    /**
     * 批量删除轮播图管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHpBannerImageByIds(String[] ids);
}
