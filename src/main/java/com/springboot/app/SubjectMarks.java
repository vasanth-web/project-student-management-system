package com.springboot.app;

public class SubjectMarks {
	int english1;
	int english2;
	int tamil1;
	int tamil2;
	int maths;
	int physics;
	int chemistry;
	int compBio;

	public int getEnglish1() {
		return english1;
	}
	public void setEnglish1(int english1) {
		this.english1 = english1;
	}
	public int getEnglish2() {
		return english2;
	}
	public void setEnglish2(int english2) {
		this.english2 = english2;
	}
	public int getTamil1() {
		return tamil1;
	}
	public void setTamil1(int tamil1) {
		this.tamil1 = tamil1;
	}
	public int getTamil2() {
		return tamil2;
	}
	public void setTamil2(int tamil2) {
		this.tamil2 = tamil2;
	}
	public int getMaths() {
		return maths;
	}
	public void setMaths(int maths) {
		this.maths = maths;
	}
	public int getPhysics() {
		return physics;
	}
	public void setPhysics(int physics) {
		this.physics = physics;
	}
	public int getChemistry() {
		return chemistry;
	}
	public void setChemistry(int chemistry) {
		this.chemistry = chemistry;
	}
	public int getCompBio() {
		return compBio;
	}
	public void setCompBio(int compBio) {
		this.compBio = compBio;
	}
	
	public SubjectMarks(int english1, int english2, int tamil1, int tamil2, int maths, int physics, int chemistry,
			int compBio) {
		super();
		this.english1 = english1;
		this.english2 = english2;
		this.tamil1 = tamil1;
		this.tamil2 = tamil2;
		this.maths = maths;
		this.physics = physics;
		this.chemistry = chemistry;
		this.compBio = compBio;
	}
	public SubjectMarks() {
		this.english1 = -1;
		this.english2 = -1;
		this.tamil1 = -1;
		this.tamil2 = -1;
		this.maths = -1;
		this.physics = -1;
		this.chemistry = -1;
		this.compBio = -1;
	}
	@Override
	public String toString() {
		return "SubjectMarks [english1=" + english1 + ", english2=" + english2 + ", tamil1=" + tamil1 + ", tamil2="
				+ tamil2 + ", maths=" + maths + ", physics=" + physics + ", chemistry=" + chemistry + ", compBio="
				+ compBio + "]";
	}

}
