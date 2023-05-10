package com.ruoyi.hpcomment.mapper;

import java.util.List;

import com.ruoyi.hpcomment.domain.HpComment;

/**
 * 评论管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-05-10
 */
public interface HpCommentMapper {
    /**
     * 查询评论管理
     *
     * @param id 评论管理主键
     * @return 评论管理
     */
    public HpComment selectHpCommentById(Long id);

    /**
     * 查询评论管理列表
     *
     * @param hpComment 评论管理
     * @return 评论管理集合
     */
    public List<HpComment> selectHpCommentList(HpComment hpComment);

    /**
     * 新增评论管理
     *
     * @param hpComment 评论管理
     * @return 结果
     */
    public int insertHpComment(HpComment hpComment);

    /**
     * 修改评论管理
     *
     * @param hpComment 评论管理
     * @return 结果
     */
    public int updateHpComment(HpComment hpComment);

    /**
     * 删除评论管理
     *
     * @param id 评论管理主键
     * @return 结果
     */
    public int deleteHpCommentById(Long id);

    /**
     * 批量删除评论管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHpCommentByIds(String[] ids);
}
