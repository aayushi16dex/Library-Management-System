package org.ncu.Spring_E_Library_Project.dao;

import org.ncu.Spring_E_Library_Project.entity.Authentication;
import org.ncu.Spring_E_Library_Project.rowmapper.AdminLoginRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RegistrationDaoImpl implements RegistrationDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int addEntry(Authentication auth) {
		

		String insertQuery = "insert into adminauth values (?,?)";
		Object[] args = {auth.getUserName(), auth.getPassword()};
		
		try {
		int row = jdbcTemplate.update(insertQuery, args);
		return row;
		}
		catch(Exception e) {
				
			System.out.println("Error ==> Duplicate key");
			return -1;
			}	
	}
	
	@Override
	public int login(Authentication auth) {
		// TODO Auto-generated method stubS
		String sql = "Select password from adminauth where userName=?";
		
		try {
			Authentication usr = jdbcTemplate.queryForObject(sql, new AdminLoginRowMapper() , auth.getUserName());
		
		String pwd = usr.getPassword();   //password in database
	    String userPass = auth.getPassword();   //password entered by user during log in 
		if (pwd.equals(userPass))
			return 1;
		else 
			return 0;
		}
		
		catch(Exception e) {
			System.out.println("Unregistered user" + e);
			return 2;
		}	
	}

}
