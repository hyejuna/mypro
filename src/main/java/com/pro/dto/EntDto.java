package com.pro.dto;

public class EntDto {
	public double entX;
	public double entY;
	
	public EntDto() {
		super();
	}
	public EntDto(double entX, double entY) {
		super();
		this.entX = entX;
		this.entY = entY;
	}
	
	public double getEntX() {
		return entX;
	}
	public void setEntX(double entX) {
		this.entX = entX;
	}
	public double getEntY() {
		return entY;
	}
	public void setEntY(double entY) {
		this.entY = entY;
	}
	
	@Override
	public String toString() {
		return "EntDto [entX=" + entX + ", entY=" + entY + "]";
	}
	
	
}
