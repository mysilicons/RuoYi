package com.ruoyi.hporders.controller;

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
import com.ruoyi.hporders.domain.HpOrders;
import com.ruoyi.hporders.service.IHpOrdersService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 订单管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hporders/orders")
public class HpOrdersController extends BaseController {
    private String prefix = "hporders/orders";

    @Autowired
    private IHpOrdersService hpOrdersService;

    @RequiresPermissions("hporders:orders:view")
    @GetMapping()
    public String orders() {
        return prefix + "/orders";
    }

    /**
     * 查询订单管理列表
     */
    @RequiresPermissions("hporders:orders:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpOrders hpOrders) {
        startPage();
        List<HpOrders> list = hpOrdersService.selectHpOrdersList(hpOrders);
        return getDataTable(list);
    }

    /**
     * 导出订单管理列表
     */
    @RequiresPermissions("hporders:orders:export")
    @Log(title = "订单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpOrders hpOrders) {
        List<HpOrders> list = hpOrdersService.selectHpOrdersList(hpOrders);
        ExcelUtil<HpOrders> util = new ExcelUtil<HpOrders>(HpOrders.class);
        return util.exportExcel(list, "订单管理数据");
    }

    /**
     * 新增订单管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存订单管理
     */
    @RequiresPermissions("hporders:orders:add")
    @Log(title = "订单管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpOrders hpOrders) {
        return toAjax(hpOrdersService.insertHpOrders(hpOrders));
    }

    /**
     * 修改订单管理
     */
    @RequiresPermissions("hporders:orders:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpOrders hpOrders = hpOrdersService.selectHpOrdersById(id);
        mmap.put("hpOrders", hpOrders);
        return prefix + "/edit";
    }

    /**
     * 修改保存订单管理
     */
    @RequiresPermissions("hporders:orders:edit")
    @Log(title = "订单管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpOrders hpOrders) {
        return toAjax(hpOrdersService.updateHpOrders(hpOrders));
    }

    /**
     * 删除订单管理
     */
    @RequiresPermissions("hporders:orders:remove")
    @Log(title = "订单管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpOrdersService.deleteHpOrdersByIds(ids));
    }
}
