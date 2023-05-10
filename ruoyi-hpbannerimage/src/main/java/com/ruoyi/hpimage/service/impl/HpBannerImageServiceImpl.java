package com.ruoyi.hpimage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpimage.mapper.HpBannerImageMapper;
import com.ruoyi.hpimage.domain.HpBannerImage;
import com.ruoyi.hpimage.service.IHpBannerImageService;
import com.ruoyi.common.core.text.Convert;

/**
 * 轮播图管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpBannerImageServiceImpl implements IHpBannerImageService {
    @Autowired
    private HpBannerImageMapper hpBannerImageMapper;

    /**
     * 查询轮播图管理
     *
     * @param id 轮播图管理主键
     * @return 轮播图管理
     */
    @Override
    public HpBannerImage selectHpBannerImageById(Long id) {
        return hpBannerImageMapper.selectHpBannerImageById(id);
    }

    /**
     * 查询轮播图管理列表
     *
     * @param hpBannerImage 轮播图管理
     * @return 轮播图管理
     */
    @Override
    public List<HpBannerImage> selectHpBannerImageList(HpBannerImage hpBannerImage) {
        return hpBannerImageMapper.selectHpBannerImageList(hpBannerImage);
    }

    /**
     * 新增轮播图管理
     *
     * @param hpBannerImage 轮播图管理
     * @return 结果
     */
    @Override
    public int insertHpBannerImage(HpBannerImage hpBannerImage) {
        return hpBannerImageMapper.insertHpBannerImage(hpBannerImage);
    }

    /**
     * 修改轮播图管理
     *
     * @param hpBannerImage 轮播图管理
     * @return 结果
     */
    @Override
    public int updateHpBannerImage(HpBannerImage hpBannerImage) {
        return hpBannerImageMapper.updateHpBannerImage(hpBannerImage);
    }

    /**
     * 批量删除轮播图管理
     *
     * @param ids 需要删除的轮播图管理主键
     * @return 结果
     */
    @Override
    public int deleteHpBannerImageByIds(String ids) {
        return hpBannerImageMapper.deleteHpBannerImageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除轮播图管理信息
     *
     * @param id 轮播图管理主键
     * @return 结果
     */
    @Override
    public int deleteHpBannerImageById(Long id) {
        return hpBannerImageMapper.deleteHpBannerImageById(id);
    }
}
