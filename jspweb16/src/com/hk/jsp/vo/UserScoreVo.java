package com.hk.jsp.vo;

public class UserScoreVo {
	
	//이름 영어 수학 과학
	private String name;//name
    private int eng;	//eng
    private int mat; //mat
    private int sci;	//sci
    
	//게터와 세터
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	public int getSci() {
		return sci;
	}
	public void setSci(int sci) {
		this.sci = sci;
	}
	

    
}
