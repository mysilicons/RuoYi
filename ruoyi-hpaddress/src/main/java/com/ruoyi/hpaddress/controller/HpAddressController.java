package com.ruoyi.hpaddress.controller;

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
import com.ruoyi.hpaddress.domain.HpAddress;
import com.ruoyi.hpaddress.service.IHpAddressService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 地址管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpaddress/address")
public class HpAddressController extends BaseController {
    private String prefix = "hpaddress/address";

    @Autowired
    private IHpAddressService hpAddressService;

    @RequiresPermissions("hpaddress:address:view")
    @GetMapping()
    public String address() {
        return prefix + "/address";
    }

    /**
     * 查询地址管理列表
     */
    @RequiresPermissions("hpaddress:address:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpAddress hpAddress) {
        startPage();
        List<HpAddress> list = hpAddressService.selectHpAddressList(hpAddress);
        return getDataTable(list);
    }

    /**
     * 导出地址管理列表
     */
    @RequiresPermissions("hpaddress:address:export")
    @Log(title = "地址管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpAddress hpAddress) {
        List<HpAddress> list = hpAddressService.selectHpAddressList(hpAddress);
        ExcelUtil<HpAddress> util = new ExcelUtil<HpAddress>(HpAddress.class);
        return util.exportExcel(list, "地址管理数据");
    }

    /**
     * 新增地址管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存地址管理
     */
    @RequiresPermissions("hpaddress:address:add")
    @Log(title = "地址管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpAddress hpAddress) {
        return toAjax(hpAddressService.insertHpAddress(hpAddress));
    }

    /**
     * 修改地址管理
     */
    @RequiresPermissions("hpaddress:address:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpAddress hpAddress = hpAddressService.selectHpAddressById(id);
        mmap.put("hpAddress", hpAddress);
        return prefix + "/edit";
    }

    /**
     * 修改保存地址管理
     */
    @RequiresPermissions("hpaddress:address:edit")
    @Log(title = "地址管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpAddress hpAddress) {
        return toAjax(hpAddressService.updateHpAddress(hpAddress));
    }

    /**
     * 删除地址管理
     */
    @RequiresPermissions("hpaddress:address:remove")
    @Log(title = "地址管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpAddressService.deleteHpAddressByIds(ids));
    }
}
