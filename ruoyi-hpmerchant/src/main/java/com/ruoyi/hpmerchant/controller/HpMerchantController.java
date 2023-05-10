package com.ruoyi.hpmerchant.controller;

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
import com.ruoyi.hpmerchant.domain.HpMerchant;
import com.ruoyi.hpmerchant.service.IHpMerchantService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商家管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpmerchant/merchant")
public class HpMerchantController extends BaseController {
    private String prefix = "hpmerchant/merchant";

    @Autowired
    private IHpMerchantService hpMerchantService;

    @RequiresPermissions("hpmerchant:merchant:view")
    @GetMapping()
    public String merchant() {
        return prefix + "/merchant";
    }

    /**
     * 查询商家管理列表
     */
    @RequiresPermissions("hpmerchant:merchant:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpMerchant hpMerchant) {
        startPage();
        List<HpMerchant> list = hpMerchantService.selectHpMerchantList(hpMerchant);
        return getDataTable(list);
    }

    /**
     * 导出商家管理列表
     */
    @RequiresPermissions("hpmerchant:merchant:export")
    @Log(title = "商家管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpMerchant hpMerchant) {
        List<HpMerchant> list = hpMerchantService.selectHpMerchantList(hpMerchant);
        ExcelUtil<HpMerchant> util = new ExcelUtil<HpMerchant>(HpMerchant.class);
        return util.exportExcel(list, "商家管理数据");
    }

    /**
     * 新增商家管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存商家管理
     */
    @RequiresPermissions("hpmerchant:merchant:add")
    @Log(title = "商家管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpMerchant hpMerchant) {
        return toAjax(hpMerchantService.insertHpMerchant(hpMerchant));
    }

    /**
     * 修改商家管理
     */
    @RequiresPermissions("hpmerchant:merchant:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpMerchant hpMerchant = hpMerchantService.selectHpMerchantById(id);
        mmap.put("hpMerchant", hpMerchant);
        return prefix + "/edit";
    }

    /**
     * 修改保存商家管理
     */
    @RequiresPermissions("hpmerchant:merchant:edit")
    @Log(title = "商家管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpMerchant hpMerchant) {
        return toAjax(hpMerchantService.updateHpMerchant(hpMerchant));
    }

    /**
     * 删除商家管理
     */
    @RequiresPermissions("hpmerchant:merchant:remove")
    @Log(title = "商家管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpMerchantService.deleteHpMerchantByIds(ids));
    }
}
