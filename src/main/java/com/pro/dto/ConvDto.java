package com.pro.dto;

public class ConvDto {
	private double convX;
	private double convY;
	
	public ConvDto() {
		super();
	}
	public ConvDto(double convX, double convY) {
		super();
		this.convX = convX;
		this.convY = convY;
	}
	
	public double getConvX() {
		return convX;
	}
	public void setConvX(double convX) {
		this.convX = convX;
	}
	public double getConvY() {
		return convY;
	}
	public void setConvY(double convY) {
		this.convY = convY;
	}
	
	@Override
	public String toString() {
		return "ConvDto [convX=" + convX + ", convY=" + convY + "]";
	}
	
	
}
