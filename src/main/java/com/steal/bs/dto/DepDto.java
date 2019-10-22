package com.steal.bs.dto;

public class DepDto {
	
	private int dep_no;
	private String dep_name;
	
	public DepDto() {}
	
	public DepDto(int dep_no, String dep_name) {
		this.dep_no = dep_no;
		this.dep_name = dep_name;
	}

	public int getDep_no() {
		return dep_no;
	}

	public void setDep_no(int dep_no) {
		this.dep_no = dep_no;
	}

	public String getDep_name() {
		return dep_name;
	}

	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}

	@Override
	public String toString() {
		return "DepDto [dep_no=" + dep_no + ", dep_name=" + dep_name + "]";
	}
	
}
