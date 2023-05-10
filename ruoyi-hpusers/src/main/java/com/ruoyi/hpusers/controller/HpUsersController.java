package com.ruoyi.hpusers.controller;

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
import com.ruoyi.hpusers.domain.HpUsers;
import com.ruoyi.hpusers.service.IHpUsersService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpusers/users")
public class HpUsersController extends BaseController {
    private String prefix = "hpusers/users";

    @Autowired
    private IHpUsersService hpUsersService;

    @RequiresPermissions("hpusers:users:view")
    @GetMapping()
    public String users() {
        return prefix + "/users";
    }

    /**
     * 查询用户管理列表
     */
    @RequiresPermissions("hpusers:users:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpUsers hpUsers) {
        startPage();
        List<HpUsers> list = hpUsersService.selectHpUsersList(hpUsers);
        return getDataTable(list);
    }

    /**
     * 导出用户管理列表
     */
    @RequiresPermissions("hpusers:users:export")
    @Log(title = "用户管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpUsers hpUsers) {
        List<HpUsers> list = hpUsersService.selectHpUsersList(hpUsers);
        ExcelUtil<HpUsers> util = new ExcelUtil<HpUsers>(HpUsers.class);
        return util.exportExcel(list, "用户管理数据");
    }

    /**
     * 新增用户管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存用户管理
     */
    @RequiresPermissions("hpusers:users:add")
    @Log(title = "用户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpUsers hpUsers) {
        return toAjax(hpUsersService.insertHpUsers(hpUsers));
    }

    /**
     * 修改用户管理
     */
    @RequiresPermissions("hpusers:users:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpUsers hpUsers = hpUsersService.selectHpUsersById(id);
        mmap.put("hpUsers", hpUsers);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户管理
     */
    @RequiresPermissions("hpusers:users:edit")
    @Log(title = "用户管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpUsers hpUsers) {
        return toAjax(hpUsersService.updateHpUsers(hpUsers));
    }

    /**
     * 删除用户管理
     */
    @RequiresPermissions("hpusers:users:remove")
    @Log(title = "用户管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpUsersService.deleteHpUsersByIds(ids));
    }
}
