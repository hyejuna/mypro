package com.pro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.dto.CctvDto;
import com.pro.dto.EntDto;
import com.pro.dto.InfoDto;
import com.pro.dto.LightDto;
import com.pro.dto.RankDto;

@Repository
public class MainDao {
	
	@Autowired SqlSession sqlSession;

	/* 중/대로까지 거리 */
	public InfoDto getRoad(InfoDto info) {
		System.out.println("----dao.getRoad----");
		//System.out.println(info);
		
		double roadDist = sqlSession.selectOne("sql.selectRoadDist",info);
		//System.out.println(roadDist);
		info.setdRoad(roadDist);
		//System.out.println(info);
		return info;
	}
	
	/* 경찰관서까지 거리 & 좌표 */	
	public InfoDto getPoliceInfo(InfoDto info) {
		System.out.println("----dao.getPoliceInfo----");
		//System.out.println(info);
		
		InfoDto policeInfo = sqlSession.selectOne("sql.selectPoliceInfo",info);
		info.setdPolice(policeInfo.getdPolice());
		info.setPoliceX(policeInfo.getPoliceX());
		info.setPoliceY(policeInfo.getPoliceY());
		//System.out.println(info);
		return info;
	}
	
	/* cctv 좌표 */
	public InfoDto getCctvList(InfoDto info) {
		System.out.println("----dao.getCctvList----");
		//System.out.println(info);
		
		List<CctvDto> cctvList = sqlSession.selectList("sql.selectCctvList", info);
		//System.out.println(cctvList);
		
		info.setCctvList(cctvList);
		info.setCntCctv(cctvList.size());
		//System.out.println(info);
		return info;
	}
	
	/* 보안등 좌표 */
	public InfoDto getLightList(InfoDto info) {
		System.out.println("----dao.getLightList----");
		//System.out.println(info);
		
		List<LightDto> lightList = sqlSession.selectList("sql.selectLightList", info);
		//System.out.println(lightList);
		
		info.setLightList(lightList);
		info.setCntLight(lightList.size());
		//System.out.println(info);
		return info;
	}
	
	/* 유흥주점 좌표 */
	public InfoDto getEntList(InfoDto info) {
		System.out.println("----dao.getEntList----");
		//System.out.println(info);
		
		List<EntDto> entList = sqlSession.selectList("sql.selectEntList", info);
		//System.out.println(entList);
		
		info.setEntList(entList);
		info.setCntEnt(entList.size());
		//System.out.println(info);
		return info;
	}
	
	/* 여성안심까지 거리 & 좌표 */	
	public InfoDto getConvInfo(InfoDto info) {
		System.out.println("----dao.getConvInfo----");
		//System.out.println(info);
		
		InfoDto convInfo = sqlSession.selectOne("sql.selectConvInfo",info);
		info.setdConv(convInfo.getdConv());
		info.setConvX(convInfo.getConvX());
		info.setConvY(convInfo.getConvY());
		//System.out.println(info);
		return info;
	}
	
	/* 순위 정보 */
	public InfoDto getRankInfo(InfoDto info) {
		System.out.println("----dao.getRankInfo----");
		
		RankDto rank = new RankDto();
		
		/*roadRank*/
		rank.setValue(info.getdRoad());
		rank.setVid(1);
		rank.setCode(-1);
		info.setRoadRank(sqlSession.selectOne("selectRank",rank));
		
		/*policeRank*/
		rank.setValue(info.getdPolice());
		rank.setVid(2);
		rank.setCode(-1);
		info.setPoliceRank(sqlSession.selectOne("selectRank",rank));
		
		/* convRank */
		rank.setValue(info.getdConv());
		rank.setVid(6);
		rank.setCode(-1);
		info.setConvRank(sqlSession.selectOne("selectRank",rank));
		
		/*entRank*/
		rank.setValue(info.getCntEnt()*100*100/Math.pow(info.getdRoad(), 2));
		rank.setVid(5);
		rank.setCode(-1);
		info.setEntRank(sqlSession.selectOne("selectRank",rank));
		
		/* cctvRank */
		rank.setValue(info.getCntCctv()*100*100/Math.pow(info.getdRoad(), 2));
		rank.setVid(3);
		rank.setCode(1);
		info.setCctvRank(sqlSession.selectOne("selectRank",rank));
		
		/* lightRank */
		rank.setValue(info.getCntLight()*100*100/Math.pow(info.getdRoad(), 2));
		rank.setVid(4);
		rank.setCode(1);
		info.setLightRank(sqlSession.selectOne("selectRank",rank));
			
		return info;
	}
}
