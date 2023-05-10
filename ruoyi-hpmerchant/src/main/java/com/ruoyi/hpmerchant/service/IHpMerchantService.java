package com.ruoyi.hpmerchant.service;

import java.util.List;

import com.ruoyi.hpmerchant.domain.HpMerchant;

/**
 * 商家管理Service接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface IHpMerchantService {
    /**
     * 查询商家管理
     *
     * @param id 商家管理主键
     * @return 商家管理
     */
    public HpMerchant selectHpMerchantById(Long id);

    /**
     * 查询商家管理列表
     *
     * @param hpMerchant 商家管理
     * @return 商家管理集合
     */
    public List<HpMerchant> selectHpMerchantList(HpMerchant hpMerchant);

    /**
     * 新增商家管理
     *
     * @param hpMerchant 商家管理
     * @return 结果
     */
    public int insertHpMerchant(HpMerchant hpMerchant);

    /**
     * 修改商家管理
     *
     * @param hpMerchant 商家管理
     * @return 结果
     */
    public int updateHpMerchant(HpMerchant hpMerchant);

    /**
     * 批量删除商家管理
     *
     * @param ids 需要删除的商家管理主键集合
     * @return 结果
     */
    public int deleteHpMerchantByIds(String ids);

    /**
     * 删除商家管理信息
     *
     * @param id 商家管理主键
     * @return 结果
     */
    public int deleteHpMerchantById(Long id);
}
