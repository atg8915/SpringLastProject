package com.sist.service;
import java.util.*;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface GoodsService {
	public List<GoodsVO> goodsListData(int start,int end);
	public int goodsTotalPage();
	public GoodsVO goodsDetailData(int no);
}
