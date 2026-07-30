package com.sist.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import java.util.*;
import com.sist.mapper.*;
import com.sist.vo.*;
@Service
@RequiredArgsConstructor
public class GoodsServiceImpl implements GoodsService{
	private final GoodsMapper mapper;
	@Override
	public List<GoodsVO> goodsListData(int start, int end) {
		// TODO Auto-generated method stub
		return mapper.goodsListData(start, end);
	}

	@Override
	public int goodsTotalPage() {
		// TODO Auto-generated method stub
		return mapper.goodsTotalPage();
	}

	@Override
	public GoodsVO goodsDetailData(int no) {
		// TODO Auto-generated method stub
		return mapper.goodsDetailData(no);
	}
	
}
