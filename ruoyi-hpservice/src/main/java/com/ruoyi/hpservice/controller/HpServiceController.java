package com.ruoyi.hpservice.controller;

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
import com.ruoyi.hpservice.domain.HpService;
import com.ruoyi.hpservice.service.IHpServiceService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 服务管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpservice/service")
public class HpServiceController extends BaseController {
    private String prefix = "hpservice/service";

    @Autowired
    private IHpServiceService hpServiceService;

    @RequiresPermissions("hpservice:service:view")
    @GetMapping()
    public String service() {
        return prefix + "/service";
    }

    /**
     * 查询服务管理列表
     */
    @RequiresPermissions("hpservice:service:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpService hpService) {
        startPage();
        List<HpService> list = hpServiceService.selectHpServiceList(hpService);
        return getDataTable(list);
    }

    /**
     * 导出服务管理列表
     */
    @RequiresPermissions("hpservice:service:export")
    @Log(title = "服务管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpService hpService) {
        List<HpService> list = hpServiceService.selectHpServiceList(hpService);
        ExcelUtil<HpService> util = new ExcelUtil<HpService>(HpService.class);
        return util.exportExcel(list, "服务管理数据");
    }

    /**
     * 新增服务管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存服务管理
     */
    @RequiresPermissions("hpservice:service:add")
    @Log(title = "服务管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpService hpService) {
        return toAjax(hpServiceService.insertHpService(hpService));
    }

    /**
     * 修改服务管理
     */
    @RequiresPermissions("hpservice:service:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpService hpService = hpServiceService.selectHpServiceById(id);
        mmap.put("hpService", hpService);
        return prefix + "/edit";
    }

    /**
     * 修改保存服务管理
     */
    @RequiresPermissions("hpservice:service:edit")
    @Log(title = "服务管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpService hpService) {
        return toAjax(hpServiceService.updateHpService(hpService));
    }

    /**
     * 删除服务管理
     */
    @RequiresPermissions("hpservice:service:remove")
    @Log(title = "服务管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpServiceService.deleteHpServiceByIds(ids));
    }
}
