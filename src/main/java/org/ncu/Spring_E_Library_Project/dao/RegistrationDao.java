package org.ncu.Spring_E_Library_Project.dao;

import org.ncu.Spring_E_Library_Project.entity.Authentication;

public interface RegistrationDao {

	// Insert new user entry
	public int addEntry(Authentication auth);
	
	// Login 
	public int login(Authentication auth);
}
