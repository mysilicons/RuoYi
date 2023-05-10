package com.ruoyi.hpaddress.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpaddress.mapper.HpAddressMapper;
import com.ruoyi.hpaddress.domain.HpAddress;
import com.ruoyi.hpaddress.service.IHpAddressService;
import com.ruoyi.common.core.text.Convert;

/**
 * 地址管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpAddressServiceImpl implements IHpAddressService {
    @Autowired
    private HpAddressMapper hpAddressMapper;

    /**
     * 查询地址管理
     *
     * @param id 地址管理主键
     * @return 地址管理
     */
    @Override
    public HpAddress selectHpAddressById(Long id) {
        return hpAddressMapper.selectHpAddressById(id);
    }

    /**
     * 查询地址管理列表
     *
     * @param hpAddress 地址管理
     * @return 地址管理
     */
    @Override
    public List<HpAddress> selectHpAddressList(HpAddress hpAddress) {
        return hpAddressMapper.selectHpAddressList(hpAddress);
    }

    /**
     * 新增地址管理
     *
     * @param hpAddress 地址管理
     * @return 结果
     */
    @Override
    public int insertHpAddress(HpAddress hpAddress) {
        return hpAddressMapper.insertHpAddress(hpAddress);
    }

    /**
     * 修改地址管理
     *
     * @param hpAddress 地址管理
     * @return 结果
     */
    @Override
    public int updateHpAddress(HpAddress hpAddress) {
        return hpAddressMapper.updateHpAddress(hpAddress);
    }

    /**
     * 批量删除地址管理
     *
     * @param ids 需要删除的地址管理主键
     * @return 结果
     */
    @Override
    public int deleteHpAddressByIds(String ids) {
        return hpAddressMapper.deleteHpAddressByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除地址管理信息
     *
     * @param id 地址管理主键
     * @return 结果
     */
    @Override
    public int deleteHpAddressById(Long id) {
        return hpAddressMapper.deleteHpAddressById(id);
    }
}
