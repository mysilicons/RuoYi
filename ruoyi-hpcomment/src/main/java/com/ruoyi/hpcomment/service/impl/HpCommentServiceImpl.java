package com.ruoyi.hpcomment.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.hpcomment.mapper.HpCommentMapper;
import com.ruoyi.hpcomment.domain.HpComment;
import com.ruoyi.hpcomment.service.IHpCommentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 评论管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Service
public class HpCommentServiceImpl implements IHpCommentService {
    @Autowired
    private HpCommentMapper hpCommentMapper;

    /**
     * 查询评论管理
     *
     * @param id 评论管理主键
     * @return 评论管理
     */
    @Override
    public HpComment selectHpCommentById(Long id) {
        return hpCommentMapper.selectHpCommentById(id);
    }

    /**
     * 查询评论管理列表
     *
     * @param hpComment 评论管理
     * @return 评论管理
     */
    @Override
    public List<HpComment> selectHpCommentList(HpComment hpComment) {
        return hpCommentMapper.selectHpCommentList(hpComment);
    }

    /**
     * 新增评论管理
     *
     * @param hpComment 评论管理
     * @return 结果
     */
    @Override
    public int insertHpComment(HpComment hpComment) {
        return hpCommentMapper.insertHpComment(hpComment);
    }

    /**
     * 修改评论管理
     *
     * @param hpComment 评论管理
     * @return 结果
     */
    @Override
    public int updateHpComment(HpComment hpComment) {
        return hpCommentMapper.updateHpComment(hpComment);
    }

    /**
     * 批量删除评论管理
     *
     * @param ids 需要删除的评论管理主键
     * @return 结果
     */
    @Override
    public int deleteHpCommentByIds(String ids) {
        return hpCommentMapper.deleteHpCommentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除评论管理信息
     *
     * @param id 评论管理主键
     * @return 结果
     */
    @Override
    public int deleteHpCommentById(Long id) {
        return hpCommentMapper.deleteHpCommentById(id);
    }
}
