package model;

import java.io.Serializable;
public class Register implements Serializable {

private String name,gmail,password,re_enterpassword;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getGmail() {
	return gmail;
}

public void setGmail(String gmail) {
	this.gmail = gmail;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getRe_enterpassword() {
	return re_enterpassword;
}

public void setRe_enterpassword(String re_enterpassword) {
	this.re_enterpassword = re_enterpassword;
}	 


}
