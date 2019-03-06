package com.goods.service;

import com.goods.entity.GoodsBasicInfo;

import java.util.List;

public interface GoodsBasicInfoService {

    int addOne(GoodsBasicInfo goodsBasicInfo);

    List<GoodsBasicInfo> getAllGoodsBasicInfo(int offset, int limit);
}
