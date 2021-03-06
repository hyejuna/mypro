package com.pro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pro.dao.MainDao;
import com.pro.dto.InfoDto;

@Service
public class MainService {
	
	@Autowired
	MainDao mainDao;
	
	public InfoDto getInfo(InfoDto info) {
		System.out.println("----getInfo.service----");
		//System.out.println(info);
		
		info = mainDao.getRoad(info);
		info = mainDao.getCctvList(info);
		info = mainDao.getLightList(info);
		info = mainDao.getEntList(info);
		info = mainDao.getConvList(info);
		info = mainDao.getPoliceInfo(info);
		info = mainDao.getRankInfo(info);

		//System.out.println(info);
		return info;
	}

}
