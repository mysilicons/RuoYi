package com.ruoyi.hpservice.mapper;

import java.util.List;

import com.ruoyi.hpservice.domain.HpService;

/**
 * 服务管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface HpServiceMapper {
    /**
     * 查询服务管理
     *
     * @param id 服务管理主键
     * @return 服务管理
     */
    public HpService selectHpServiceById(Long id);

    /**
     * 查询服务管理列表
     *
     * @param hpService 服务管理
     * @return 服务管理集合
     */
    public List<HpService> selectHpServiceList(HpService hpService);

    /**
     * 新增服务管理
     *
     * @param hpService 服务管理
     * @return 结果
     */
    public int insertHpService(HpService hpService);

    /**
     * 修改服务管理
     *
     * @param hpService 服务管理
     * @return 结果
     */
    public int updateHpService(HpService hpService);

    /**
     * 删除服务管理
     *
     * @param id 服务管理主键
     * @return 结果
     */
    public int deleteHpServiceById(Long id);

    /**
     * 批量删除服务管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHpServiceByIds(String[] ids);
}
