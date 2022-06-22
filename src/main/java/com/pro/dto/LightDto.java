package com.pro.dto;

public class LightDto {
	private double lightX;
	private double lightY;
	
	public LightDto() {
		super();
	}
	public LightDto(double lightX, double lightY) {
		super();
		this.lightX = lightX;
		this.lightY = lightY;
	}
	
	public double getLightX() {
		return lightX;
	}
	public void setLightX(double lightX) {
		this.lightX = lightX;
	}
	public double getLightY() {
		return lightY;
	}
	public void setLightY(double lightY) {
		this.lightY = lightY;
	}
	
	@Override
	public String toString() {
		return "LightDto [lightX=" + lightX + ", lightY=" + lightY + "]";
	}
	
	
}
