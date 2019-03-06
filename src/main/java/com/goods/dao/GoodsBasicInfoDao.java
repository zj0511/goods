package com.goods.dao;

import com.goods.entity.GoodsBasicInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsBasicInfoDao {

    int addOne(GoodsBasicInfo goodsBasicInfo);

    /**
     * 查询所有商品信息
     * @param offset 查询其实位置
     * @param limit 查询数目
     * @return 查询结果
     */
    List<GoodsBasicInfo> getAllGoodsBasicInfo(@Param("offset") int offset, @Param("limit") int limit);

}
