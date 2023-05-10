package com.ruoyi.hpusers.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpusers.mapper.HpUsersMapper;
import com.ruoyi.hpusers.domain.HpUsers;
import com.ruoyi.hpusers.service.IHpUsersService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpUsersServiceImpl implements IHpUsersService {
    @Autowired
    private HpUsersMapper hpUsersMapper;

    /**
     * 查询用户管理
     *
     * @param id 用户管理主键
     * @return 用户管理
     */
    @Override
    public HpUsers selectHpUsersById(Long id) {
        return hpUsersMapper.selectHpUsersById(id);
    }

    /**
     * 查询用户管理列表
     *
     * @param hpUsers 用户管理
     * @return 用户管理
     */
    @Override
    public List<HpUsers> selectHpUsersList(HpUsers hpUsers) {
        return hpUsersMapper.selectHpUsersList(hpUsers);
    }

    /**
     * 新增用户管理
     *
     * @param hpUsers 用户管理
     * @return 结果
     */
    @Override
    public int insertHpUsers(HpUsers hpUsers) {
        return hpUsersMapper.insertHpUsers(hpUsers);
    }

    /**
     * 修改用户管理
     *
     * @param hpUsers 用户管理
     * @return 结果
     */
    @Override
    public int updateHpUsers(HpUsers hpUsers) {
        return hpUsersMapper.updateHpUsers(hpUsers);
    }

    /**
     * 批量删除用户管理
     *
     * @param ids 需要删除的用户管理主键
     * @return 结果
     */
    @Override
    public int deleteHpUsersByIds(String ids) {
        return hpUsersMapper.deleteHpUsersByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户管理信息
     *
     * @param id 用户管理主键
     * @return 结果
     */
    @Override
    public int deleteHpUsersById(Long id) {
        return hpUsersMapper.deleteHpUsersById(id);
    }
}
