package com.pro.dto;

public class RankDto {
	private double value;
	private int vid;
	private int code;
	
	
	public RankDto() {
		super();
	}
	public RankDto(double value, int vid, int code) {
		super();
		this.value = value;
		this.vid = vid;
		this.code = code;
	}
	
	
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "RankDto [value=" + value + ", vid=" + vid + ", code=" + code + "]";
	}

	
}
