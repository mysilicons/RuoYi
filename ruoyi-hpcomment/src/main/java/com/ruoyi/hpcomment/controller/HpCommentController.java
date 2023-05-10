package com.ruoyi.hpcomment.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.hpcomment.domain.HpComment;
import com.ruoyi.hpcomment.service.IHpCommentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 评论管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpcomment/comment")
public class HpCommentController extends BaseController {
    private String prefix = "hpcomment/comment";

    @Autowired
    private IHpCommentService hpCommentService;

    @RequiresPermissions("hpcomment:comment:view")
    @GetMapping()
    public String comment() {
        return prefix + "/comment";
    }

    /**
     * 查询评论管理列表
     */
    @RequiresPermissions("hpcomment:comment:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpComment hpComment) {
        startPage();
        List<HpComment> list = hpCommentService.selectHpCommentList(hpComment);
        return getDataTable(list);
    }

    /**
     * 导出评论管理列表
     */
    @RequiresPermissions("hpcomment:comment:export")
    @Log(title = "评论管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpComment hpComment) {
        List<HpComment> list = hpCommentService.selectHpCommentList(hpComment);
        ExcelUtil<HpComment> util = new ExcelUtil<HpComment>(HpComment.class);
        return util.exportExcel(list, "评论管理数据");
    }

    /**
     * 新增评论管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存评论管理
     */
    @RequiresPermissions("hpcomment:comment:add")
    @Log(title = "评论管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpComment hpComment) {
        return toAjax(hpCommentService.insertHpComment(hpComment));
    }

    /**
     * 修改评论管理
     */
    @RequiresPermissions("hpcomment:comment:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpComment hpComment = hpCommentService.selectHpCommentById(id);
        mmap.put("hpComment", hpComment);
        return prefix + "/edit";
    }

    /**
     * 修改保存评论管理
     */
    @RequiresPermissions("hpcomment:comment:edit")
    @Log(title = "评论管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpComment hpComment) {
        return toAjax(hpCommentService.updateHpComment(hpComment));
    }

    /**
     * 删除评论管理
     */
    @RequiresPermissions("hpcomment:comment:remove")
    @Log(title = "评论管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpCommentService.deleteHpCommentByIds(ids));
    }
}
