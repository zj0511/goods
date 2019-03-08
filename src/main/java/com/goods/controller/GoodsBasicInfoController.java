package com.goods.controller;

import com.goods.entity.GoodsBasicInfo;
import com.goods.service.GoodsBasicInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/goodsBasicInfo") // url:/模块/资源/{id}/细分
public class GoodsBasicInfoController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GoodsBasicInfoService goodsBasicInfoService;

    @RequestMapping(value = "/addGoodBasicInfo", method = RequestMethod.GET)
    private String addGoodBasicInfo() {
        return "goodBasicInfoAdd";
    }

    @RequestMapping(value = "/certainToAddGoodBasicInfo", method = RequestMethod.POST)
    private String certainToAddGoodBasicInfo(GoodsBasicInfo goodsBasicInfo, Model model) {
        logger.info("提交添加" + goodsBasicInfo);
        int result = goodsBasicInfoService.addOne(goodsBasicInfo);
        if (result < 0) {
            model.addAttribute("message", "添加失败");
            return "goodBasicInfoAdd";
        }
        model.addAttribute("message", "添加成功");
        List<GoodsBasicInfo> list = goodsBasicInfoService.getAllGoodsBasicInfo(0, 10);
        model.addAttribute("list", list);
        return "goodsBasicInfoList";
    }

    @RequestMapping(value = "/listGoodsBasicInfo", method = RequestMethod.GET)
    private String listGoodsBasicInfo(Model model) {
        List<GoodsBasicInfo> list = goodsBasicInfoService.getAllGoodsBasicInfo(0, 10);
        model.addAttribute("goodsBasicInfoList", list);
        return "goodsBasicInfoList";
    }
}
