package com.pro.dto;

public class CctvDto {
	private double cctvX;
	private double cctvY;
	
	public CctvDto() {
		super();
	}
	public CctvDto(double cctvX, double cctvY) {
		super();
		this.cctvX = cctvX;
		this.cctvY = cctvY;
	}
	
	public double getCctvX() {
		return cctvX;
	}
	public void setCctvX(double cctvX) {
		this.cctvX = cctvX;
	}
	public double getCctvY() {
		return cctvY;
	}
	public void setCctvY(double cctvY) {
		this.cctvY = cctvY;
	}
	
	@Override
	public String toString() {
		return "CctvDto [cctvX=" + cctvX + ", cctvY=" + cctvY + "]";
	}
	
	

}
