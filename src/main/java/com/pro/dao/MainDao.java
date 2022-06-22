package com.pro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.dto.CctvDto;
import com.pro.dto.InfoDto;

@Repository
public class MainDao {
	
	@Autowired SqlSession sqlSession;
	
	public InfoDto getRoad(InfoDto info) {
		System.out.println("---dao.getRoad---");
		System.out.println(info);
		
		double roadDist = sqlSession.selectOne("sql.selectRoadDist",info);
		System.out.println(roadDist);
		info.setdRoad(roadDist);
		System.out.println(info);
		return info;
	}
	
	public InfoDto getCctvList(InfoDto info) {
		System.out.println("---dao.getCctvList---");
		System.out.println(info);
		
		List<CctvDto> cctvList = sqlSession.selectList("sql.selectCctvList", info);
		
		
		return info;
	}
}
