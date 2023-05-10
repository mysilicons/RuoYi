package com.ruoyi.hpimage.controller;

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
import com.ruoyi.hpimage.domain.HpBannerImage;
import com.ruoyi.hpimage.service.IHpBannerImageService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 轮播图管理Controller
 *
 * @author ruoyi
 * @date 2023-05-10
 */
@Controller
@RequestMapping("/hpimage/image")
public class HpBannerImageController extends BaseController {
    private String prefix = "hpimage/image";

    @Autowired
    private IHpBannerImageService hpBannerImageService;

    @RequiresPermissions("hpimage:image:view")
    @GetMapping()
    public String image() {
        return prefix + "/image";
    }

    /**
     * 查询轮播图管理列表
     */
    @RequiresPermissions("hpimage:image:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HpBannerImage hpBannerImage) {
        startPage();
        List<HpBannerImage> list = hpBannerImageService.selectHpBannerImageList(hpBannerImage);
        return getDataTable(list);
    }

    /**
     * 导出轮播图管理列表
     */
    @RequiresPermissions("hpimage:image:export")
    @Log(title = "轮播图管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HpBannerImage hpBannerImage) {
        List<HpBannerImage> list = hpBannerImageService.selectHpBannerImageList(hpBannerImage);
        ExcelUtil<HpBannerImage> util = new ExcelUtil<HpBannerImage>(HpBannerImage.class);
        return util.exportExcel(list, "轮播图管理数据");
    }

    /**
     * 新增轮播图管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存轮播图管理
     */
    @RequiresPermissions("hpimage:image:add")
    @Log(title = "轮播图管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HpBannerImage hpBannerImage) {
        return toAjax(hpBannerImageService.insertHpBannerImage(hpBannerImage));
    }

    /**
     * 修改轮播图管理
     */
    @RequiresPermissions("hpimage:image:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        HpBannerImage hpBannerImage = hpBannerImageService.selectHpBannerImageById(id);
        mmap.put("hpBannerImage", hpBannerImage);
        return prefix + "/edit";
    }

    /**
     * 修改保存轮播图管理
     */
    @RequiresPermissions("hpimage:image:edit")
    @Log(title = "轮播图管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HpBannerImage hpBannerImage) {
        return toAjax(hpBannerImageService.updateHpBannerImage(hpBannerImage));
    }

    /**
     * 删除轮播图管理
     */
    @RequiresPermissions("hpimage:image:remove")
    @Log(title = "轮播图管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(hpBannerImageService.deleteHpBannerImageByIds(ids));
    }
}
