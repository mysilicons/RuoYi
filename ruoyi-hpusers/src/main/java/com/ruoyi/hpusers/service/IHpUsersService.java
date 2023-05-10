package com.ruoyi.hpusers.service;

import java.util.List;

import com.ruoyi.hpusers.domain.HpUsers;

/**
 * 用户管理Service接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface IHpUsersService {
    /**
     * 查询用户管理
     *
     * @param id 用户管理主键
     * @return 用户管理
     */
    public HpUsers selectHpUsersById(Long id);

    /**
     * 查询用户管理列表
     *
     * @param hpUsers 用户管理
     * @return 用户管理集合
     */
    public List<HpUsers> selectHpUsersList(HpUsers hpUsers);

    /**
     * 新增用户管理
     *
     * @param hpUsers 用户管理
     * @return 结果
     */
    public int insertHpUsers(HpUsers hpUsers);

    /**
     * 修改用户管理
     *
     * @param hpUsers 用户管理
     * @return 结果
     */
    public int updateHpUsers(HpUsers hpUsers);

    /**
     * 批量删除用户管理
     *
     * @param ids 需要删除的用户管理主键集合
     * @return 结果
     */
    public int deleteHpUsersByIds(String ids);

    /**
     * 删除用户管理信息
     *
     * @param id 用户管理主键
     * @return 结果
     */
    public int deleteHpUsersById(Long id);
}
