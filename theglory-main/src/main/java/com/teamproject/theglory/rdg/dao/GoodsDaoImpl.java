package com.teamproject.theglory.rdg.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.rdg.domain.Goods;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.GoodsMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<Goods> goodsList(){
			
		return sqlSession.selectList(NAME_SPACE + ".goodsList");
	}
	
}
