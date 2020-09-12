package model;
import java.io.Serializable;

import javax.servlet.http.Part;

public class AddOffer implements Serializable {
	private int oid;
	private  String Tourname;
	private  String Location;
	private int days;
	private  String Date;
	private  Double Price;
	
	
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getTourname() {
		return Tourname;
	}
	public void setTourname(String tourname) {
		Tourname = tourname;
	}
	
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public Double getPrice() {
		return Price;
	}
	public void setPrice(Double price) {
		Price = price;
	}
	
	
	
}
