package com.pro.dto;

import java.util.List;

public class InfoDto {
	private double x;
	private double y;
	private double dRoad;
	private double policeX;
	private double policeY;
	private double dPolice;
	private double roadRank;
	private double policeRank;
	private double cctvRank;
	private double lightRank;
	private double entRank;
	private double convRank;
	private List<CctvDto> cctvList;
	private List<LightDto> lightList;
	private List<EntDto> entList;
	private List<ConvDto> convList;
	
	
	public InfoDto() {
		super();
	}
	public InfoDto(double x, double y, double dRoad, double policeX, double policeY, double dPolice, double roadRank,
			double policeRank, double cctvRank, double lightRank, double entRank, double convRank,
			List<CctvDto> cctvList, List<LightDto> lightList, List<EntDto> entList, List<ConvDto> convList) {
		super();
		this.x = x;
		this.y = y;
		this.dRoad = dRoad;
		this.policeX = policeX;
		this.policeY = policeY;
		this.dPolice = dPolice;
		this.roadRank = roadRank;
		this.policeRank = policeRank;
		this.cctvRank = cctvRank;
		this.lightRank = lightRank;
		this.entRank = entRank;
		this.convRank = convRank;
		this.cctvList = cctvList;
		this.lightList = lightList;
		this.entList = entList;
		this.convList = convList;
	}
	
	
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	public double getdRoad() {
		return dRoad;
	}
	public void setdRoad(double dRoad) {
		this.dRoad = dRoad;
	}
	public double getPoliceX() {
		return policeX;
	}
	public void setPoliceX(double policeX) {
		this.policeX = policeX;
	}
	public double getPoliceY() {
		return policeY;
	}
	public void setPoliceY(double policeY) {
		this.policeY = policeY;
	}
	public double getdPolice() {
		return dPolice;
	}
	public void setdPolice(double dPolice) {
		this.dPolice = dPolice;
	}
	public double getRoadRank() {
		return roadRank;
	}
	public void setRoadRank(double roadRank) {
		this.roadRank = roadRank;
	}
	public double getPoliceRank() {
		return policeRank;
	}
	public void setPoliceRank(double policeRank) {
		this.policeRank = policeRank;
	}
	public double getCctvRank() {
		return cctvRank;
	}
	public void setCctvRank(double cctvRank) {
		this.cctvRank = cctvRank;
	}
	public double getLightRank() {
		return lightRank;
	}
	public void setLightRank(double lightRank) {
		this.lightRank = lightRank;
	}
	public double getEntRank() {
		return entRank;
	}
	public void setEntRank(double entRank) {
		this.entRank = entRank;
	}
	public double getConvRank() {
		return convRank;
	}
	public void setConvRank(double convRank) {
		this.convRank = convRank;
	}
	public List<CctvDto> getCctvList() {
		return cctvList;
	}
	public void setCctvList(List<CctvDto> cctvList) {
		this.cctvList = cctvList;
	}
	public List<LightDto> getLightList() {
		return lightList;
	}
	public void setLightList(List<LightDto> lightList) {
		this.lightList = lightList;
	}
	public List<EntDto> getEntList() {
		return entList;
	}
	public void setEntList(List<EntDto> entList) {
		this.entList = entList;
	}
	public List<ConvDto> getConvList() {
		return convList;
	}
	public void setConvList(List<ConvDto> convList) {
		this.convList = convList;
	}
	
	
	@Override	
	public String toString() {
		return "InfoDto [x=" + x + ", y=" + y + ", dRoad=" + dRoad + ", policeX=" + policeX + ", policeY=" + policeY
				+ ", dPolice=" + dPolice + ", roadRank=" + roadRank + ", policeRank=" + policeRank + ", cctvRank="
				+ cctvRank + ", lightRank=" + lightRank + ", entRank=" + entRank + ", convRank=" + convRank
				+ ", cctvList=" + cctvList + ", lightList=" + lightList + ", entList=" + entList + ", convList="
				+ convList + "]";
	}
	
	

}
