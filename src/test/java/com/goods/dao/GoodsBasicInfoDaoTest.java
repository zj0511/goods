package com.goods.dao;

import com.goods.BaseTest;
import com.goods.entity.GoodsBasicInfo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.Assert.*;

public class GoodsBasicInfoDaoTest extends BaseTest {

    @Autowired
    private GoodsBasicInfoDao goodsBasicInfoDao;

    @Test
    public void addOne() {

        GoodsBasicInfo goodsBasicInfo = new GoodsBasicInfo();
        goodsBasicInfo.setId("1");
        goodsBasicInfo.setGoodsName("iphone");
        goodsBasicInfo.setBelongType(1);
        goodsBasicInfo.setDate(new Timestamp(new Date().getTime()));
        goodsBasicInfo.setGoodsPrice(5000);
        goodsBasicInfo.setTotalPrice(10000);
        goodsBasicInfo.setGoodsCount(3);
        goodsBasicInfo.setRestGoods(1);
        int result = goodsBasicInfoDao.addOne(goodsBasicInfo);
        System.out.println(result);
    }
}