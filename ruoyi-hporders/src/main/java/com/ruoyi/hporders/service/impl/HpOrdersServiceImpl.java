package com.ruoyi.hporders.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hporders.mapper.HpOrdersMapper;
import com.ruoyi.hporders.domain.HpOrders;
import com.ruoyi.hporders.service.IHpOrdersService;
import com.ruoyi.common.core.text.Convert;

/**
 * 订单管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpOrdersServiceImpl implements IHpOrdersService {
    @Autowired
    private HpOrdersMapper hpOrdersMapper;

    /**
     * 查询订单管理
     *
     * @param id 订单管理主键
     * @return 订单管理
     */
    @Override
    public HpOrders selectHpOrdersById(Long id) {
        return hpOrdersMapper.selectHpOrdersById(id);
    }

    /**
     * 查询订单管理列表
     *
     * @param hpOrders 订单管理
     * @return 订单管理
     */
    @Override
    public List<HpOrders> selectHpOrdersList(HpOrders hpOrders) {
        return hpOrdersMapper.selectHpOrdersList(hpOrders);
    }

    /**
     * 新增订单管理
     *
     * @param hpOrders 订单管理
     * @return 结果
     */
    @Override
    public int insertHpOrders(HpOrders hpOrders) {
        return hpOrdersMapper.insertHpOrders(hpOrders);
    }

    /**
     * 修改订单管理
     *
     * @param hpOrders 订单管理
     * @return 结果
     */
    @Override
    public int updateHpOrders(HpOrders hpOrders) {
        return hpOrdersMapper.updateHpOrders(hpOrders);
    }

    /**
     * 批量删除订单管理
     *
     * @param ids 需要删除的订单管理主键
     * @return 结果
     */
    @Override
    public int deleteHpOrdersByIds(String ids) {
        return hpOrdersMapper.deleteHpOrdersByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除订单管理信息
     *
     * @param id 订单管理主键
     * @return 结果
     */
    @Override
    public int deleteHpOrdersById(Long id) {
        return hpOrdersMapper.deleteHpOrdersById(id);
    }
}
