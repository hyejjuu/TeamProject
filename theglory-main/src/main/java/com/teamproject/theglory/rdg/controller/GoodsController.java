package com.teamproject.theglory.rdg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject.theglory.rdg.domain.Goods;
import com.teamproject.theglory.rdg.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	@RequestMapping(value={"/goodsList"}, method=RequestMethod.GET)
	public String goodsList(Model model) {
		
		List<Goods> goodsList = goodsService.goodsList();
		
		model.addAttribute("goodsList", goodsList);
		
		return "rdg/goodsList";
	}
	
}
