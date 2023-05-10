package com.ruoyi.hpaddress.service;

import java.util.List;

import com.ruoyi.hpaddress.domain.HpAddress;

/**
 * 地址管理Service接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface IHpAddressService {
    /**
     * 查询地址管理
     *
     * @param id 地址管理主键
     * @return 地址管理
     */
    public HpAddress selectHpAddressById(Long id);

    /**
     * 查询地址管理列表
     *
     * @param hpAddress 地址管理
     * @return 地址管理集合
     */
    public List<HpAddress> selectHpAddressList(HpAddress hpAddress);

    /**
     * 新增地址管理
     *
     * @param hpAddress 地址管理
     * @return 结果
     */
    public int insertHpAddress(HpAddress hpAddress);

    /**
     * 修改地址管理
     *
     * @param hpAddress 地址管理
     * @return 结果
     */
    public int updateHpAddress(HpAddress hpAddress);

    /**
     * 批量删除地址管理
     *
     * @param ids 需要删除的地址管理主键集合
     * @return 结果
     */
    public int deleteHpAddressByIds(String ids);

    /**
     * 删除地址管理信息
     *
     * @param id 地址管理主键
     * @return 结果
     */
    public int deleteHpAddressById(Long id);
}
