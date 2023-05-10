package com.ruoyi.hpclassification.controller;

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
import com.ruoyi.hpclassification.domain.HpClassification;
import com.ruoyi.hpclassification.service.IHpClassificationService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分类管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpclassification/classification")
public class HpClassificationController extends BaseController {
    private String prefix = "hpclassification/classification";

    @Autowired
    private IHpClassificationService hpClassificationService;

    @RequiresPermissions("hpclassification:classification:view")
    @GetMapping()
    public String classification() {
        return prefix + "/classification";
    }

    /**
     * 查询分类管理列表
     */
    @RequiresPermissions("hpclassification:classification:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpClassification hpClassification) {
        startPage();
        List<HpClassification> list = hpClassificationService.selectHpClassificationList(hpClassification);
        return getDataTable(list);
    }

    /**
     * 导出分类管理列表
     */
    @RequiresPermissions("hpclassification:classification:export")
    @Log(title = "分类管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpClassification hpClassification) {
        List<HpClassification> list = hpClassificationService.selectHpClassificationList(hpClassification);
        ExcelUtil<HpClassification> util = new ExcelUtil<HpClassification>(HpClassification.class);
        return util.exportExcel(list, "分类管理数据");
    }

    /**
     * 新增分类管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存分类管理
     */
    @RequiresPermissions("hpclassification:classification:add")
    @Log(title = "分类管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpClassification hpClassification) {
        return toAjax(hpClassificationService.insertHpClassification(hpClassification));
    }

    /**
     * 修改分类管理
     */
    @RequiresPermissions("hpclassification:classification:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpClassification hpClassification = hpClassificationService.selectHpClassificationById(id);
        mmap.put("hpClassification", hpClassification);
        return prefix + "/edit";
    }

    /**
     * 修改保存分类管理
     */
    @RequiresPermissions("hpclassification:classification:edit")
    @Log(title = "分类管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpClassification hpClassification) {
        return toAjax(hpClassificationService.updateHpClassification(hpClassification));
    }

    /**
     * 删除分类管理
     */
    @RequiresPermissions("hpclassification:classification:remove")
    @Log(title = "分类管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpClassificationService.deleteHpClassificationByIds(ids));
    }
}
