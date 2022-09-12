package org.ncu.Spring_E_Library_Project.entity;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Authentication {
	
	@NotEmpty(message="This is a required field")
	@Size(min=4, message="Size should be minimum 4 characters")
	private String userName;
	
	@NotEmpty(message="This is a required field")
	@Size(min=8, message="Size should be minimum 8 characters")
	private String password;

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}