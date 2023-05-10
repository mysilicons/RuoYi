package com.ruoyi.hporders.mapper;

import java.util.List;

import com.ruoyi.hporders.domain.HpOrders;

/**
 * 订单管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface HpOrdersMapper {
    /**
     * 查询订单管理
     *
     * @param id 订单管理主键
     * @return 订单管理
     */
    public HpOrders selectHpOrdersById(Long id);

    /**
     * 查询订单管理列表
     *
     * @param hpOrders 订单管理
     * @return 订单管理集合
     */
    public List<HpOrders> selectHpOrdersList(HpOrders hpOrders);

    /**
     * 新增订单管理
     *
     * @param hpOrders 订单管理
     * @return 结果
     */
    public int insertHpOrders(HpOrders hpOrders);

    /**
     * 修改订单管理
     *
     * @param hpOrders 订单管理
     * @return 结果
     */
    public int updateHpOrders(HpOrders hpOrders);

    /**
     * 删除订单管理
     *
     * @param id 订单管理主键
     * @return 结果
     */
    public int deleteHpOrdersById(Long id);

    /**
     * 批量删除订单管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHpOrdersByIds(String[] ids);
}
