package com.myproject.minipro;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;



@Repository

public class HomeDao {

	@Autowired

	private SqlSessionTemplate sqlSession;

	

	public List<HomeDto> sel(){
		System.out.println("dao");
		

		return sqlSession.selectList("sql.sel");

		

	}

}