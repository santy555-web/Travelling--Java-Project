package model;

import java.io.Serializable;

import javax.servlet.http.Part;

public class addimages implements Serializable{
	
	private Part image1;

	public Part getImage1() {
		return image1;
	}
	public void setImage1(Part image1) {
		this.image1 = image1;
	}
	public int getImd() {
		return imd;
	}
	public void setImd(int imd) {
		this.imd = imd;
	}
	private int imd;
}
