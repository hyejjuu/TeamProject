package com.teamproject.theglory.rdg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.rdg.dao.GoodsDao;
import com.teamproject.theglory.rdg.domain.Goods;


@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDao goodsDao;
	
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	
	
	@Override
	public List<Goods> goodsList() {		
		return goodsDao.goodsList();		
	}
}
