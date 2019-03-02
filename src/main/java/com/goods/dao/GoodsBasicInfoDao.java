package com.goods.dao;

import com.goods.entity.GoodsBasicInfo;
import org.apache.ibatis.annotations.Param;

public interface GoodsBasicInfoDao {

    int addOne(GoodsBasicInfo goodsBasicInfo);

}
