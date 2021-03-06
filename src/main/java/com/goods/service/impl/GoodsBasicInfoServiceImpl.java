package com.goods.service.impl;

import com.goods.dao.GoodsBasicInfoDao;
import com.goods.entity.GoodsBasicInfo;
import com.goods.service.GoodsBasicInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsBasicInfoServiceImpl implements GoodsBasicInfoService {

    @Autowired
    private GoodsBasicInfoDao goodsBasicInfoDao;

    @Override
    public int addOne(GoodsBasicInfo goodsBasicInfo) {
        return goodsBasicInfoDao.addOne(goodsBasicInfo);
    }

    @Override
    public List<GoodsBasicInfo> getAllGoodsBasicInfo(int offset, int limit) {
        return goodsBasicInfoDao.getAllGoodsBasicInfo(offset, limit);
    }
}
