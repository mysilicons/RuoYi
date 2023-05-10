package com.ruoyi.hpmerchant.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpmerchant.mapper.HpMerchantMapper;
import com.ruoyi.hpmerchant.domain.HpMerchant;
import com.ruoyi.hpmerchant.service.IHpMerchantService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商家管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpMerchantServiceImpl implements IHpMerchantService {
    @Autowired
    private HpMerchantMapper hpMerchantMapper;

    /**
     * 查询商家管理
     *
     * @param id 商家管理主键
     * @return 商家管理
     */
    @Override
    public HpMerchant selectHpMerchantById(Long id) {
        return hpMerchantMapper.selectHpMerchantById(id);
    }

    /**
     * 查询商家管理列表
     *
     * @param hpMerchant 商家管理
     * @return 商家管理
     */
    @Override
    public List<HpMerchant> selectHpMerchantList(HpMerchant hpMerchant) {
        return hpMerchantMapper.selectHpMerchantList(hpMerchant);
    }

    /**
     * 新增商家管理
     *
     * @param hpMerchant 商家管理
     * @return 结果
     */
    @Override
    public int insertHpMerchant(HpMerchant hpMerchant) {
        return hpMerchantMapper.insertHpMerchant(hpMerchant);
    }

    /**
     * 修改商家管理
     *
     * @param hpMerchant 商家管理
     * @return 结果
     */
    @Override
    public int updateHpMerchant(HpMerchant hpMerchant) {
        return hpMerchantMapper.updateHpMerchant(hpMerchant);
    }

    /**
     * 批量删除商家管理
     *
     * @param ids 需要删除的商家管理主键
     * @return 结果
     */
    @Override
    public int deleteHpMerchantByIds(String ids) {
        return hpMerchantMapper.deleteHpMerchantByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商家管理信息
     *
     * @param id 商家管理主键
     * @return 结果
     */
    @Override
    public int deleteHpMerchantById(Long id) {
        return hpMerchantMapper.deleteHpMerchantById(id);
    }
}
