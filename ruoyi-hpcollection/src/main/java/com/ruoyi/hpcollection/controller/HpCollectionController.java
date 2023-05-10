package com.ruoyi.hpcollection.controller;

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
import com.ruoyi.hpcollection.domain.HpCollection;
import com.ruoyi.hpcollection.service.IHpCollectionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 收藏管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpcollection/collection")
public class HpCollectionController extends BaseController {
    private String prefix = "hpcollection/collection";

    @Autowired
    private IHpCollectionService hpCollectionService;

    @RequiresPermissions("hpcollection:collection:view")
    @GetMapping()
    public String collection() {
        return prefix + "/collection";
    }

    /**
     * 查询收藏管理列表
     */
    @RequiresPermissions("hpcollection:collection:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpCollection hpCollection) {
        startPage();
        List<HpCollection> list = hpCollectionService.selectHpCollectionList(hpCollection);
        return getDataTable(list);
    }

    /**
     * 导出收藏管理列表
     */
    @RequiresPermissions("hpcollection:collection:export")
    @Log(title = "收藏管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpCollection hpCollection) {
        List<HpCollection> list = hpCollectionService.selectHpCollectionList(hpCollection);
        ExcelUtil<HpCollection> util = new ExcelUtil<HpCollection>(HpCollection.class);
        return util.exportExcel(list, "收藏管理数据");
    }

    /**
     * 新增收藏管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存收藏管理
     */
    @RequiresPermissions("hpcollection:collection:add")
    @Log(title = "收藏管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpCollection hpCollection) {
        return toAjax(hpCollectionService.insertHpCollection(hpCollection));
    }

    /**
     * 修改收藏管理
     */
    @RequiresPermissions("hpcollection:collection:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpCollection hpCollection = hpCollectionService.selectHpCollectionById(id);
        mmap.put("hpCollection", hpCollection);
        return prefix + "/edit";
    }

    /**
     * 修改保存收藏管理
     */
    @RequiresPermissions("hpcollection:collection:edit")
    @Log(title = "收藏管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpCollection hpCollection) {
        return toAjax(hpCollectionService.updateHpCollection(hpCollection));
    }

    /**
     * 删除收藏管理
     */
    @RequiresPermissions("hpcollection:collection:remove")
    @Log(title = "收藏管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpCollectionService.deleteHpCollectionByIds(ids));
    }
}
