package com.goods.controller;

import com.goods.entity.GoodsBasicInfo;
import com.goods.service.GoodsBasicInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/goodsbasicinfo") // url:/模块/资源/{id}/细分
public class GoodsBasicInfoController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GoodsBasicInfoService goodsBasicInfoService;

    @RequestMapping(value = "/addgood", method = RequestMethod.POST)
    private String list(Model model) {
        int result = goodsBasicInfoService.addOne(goodsBasicInfo).getList();
        model.addAttribute("list", list);
        // list.jsp + model = ModelAndView
        return "addOne";// WEB-INF/jsp/"list".jsp
    }

---------------------
    作者：李奕锋
    来源：CSDN
    原文：https://blog.csdn.net/qq598535550/article/details/51703190
    版权声明：本文为博主原创文章，转载请附上博文链接！

}
