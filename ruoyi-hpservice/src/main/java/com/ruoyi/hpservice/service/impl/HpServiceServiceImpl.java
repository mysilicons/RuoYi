package com.ruoyi.hpservice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpservice.mapper.HpServiceMapper;
import com.ruoyi.hpservice.domain.HpService;
import com.ruoyi.hpservice.service.IHpServiceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 服务管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpServiceServiceImpl implements IHpServiceService {
    @Autowired
    private HpServiceMapper hpServiceMapper;

    /**
     * 查询服务管理
     *
     * @param id 服务管理主键
     * @return 服务管理
     */
    @Override
    public HpService selectHpServiceById(Long id) {
        return hpServiceMapper.selectHpServiceById(id);
    }

    /**
     * 查询服务管理列表
     *
     * @param hpService 服务管理
     * @return 服务管理
     */
    @Override
    public List<HpService> selectHpServiceList(HpService hpService) {
        return hpServiceMapper.selectHpServiceList(hpService);
    }

    /**
     * 新增服务管理
     *
     * @param hpService 服务管理
     * @return 结果
     */
    @Override
    public int insertHpService(HpService hpService) {
        return hpServiceMapper.insertHpService(hpService);
    }

    /**
     * 修改服务管理
     *
     * @param hpService 服务管理
     * @return 结果
     */
    @Override
    public int updateHpService(HpService hpService) {
        return hpServiceMapper.updateHpService(hpService);
    }

    /**
     * 批量删除服务管理
     *
     * @param ids 需要删除的服务管理主键
     * @return 结果
     */
    @Override
    public int deleteHpServiceByIds(String ids) {
        return hpServiceMapper.deleteHpServiceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除服务管理信息
     *
     * @param id 服务管理主键
     * @return 结果
     */
    @Override
    public int deleteHpServiceById(Long id) {
        return hpServiceMapper.deleteHpServiceById(id);
    }
}
