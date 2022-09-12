package org.ncu.Spring_E_Library_Project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.ncu.Spring_E_Library_Project.entity.Authentication;
import org.springframework.jdbc.core.RowMapper;

public class AdminLoginRowMapper implements RowMapper<Authentication>{

	@Override
	public Authentication mapRow(ResultSet rs, int rowNum) throws SQLException {
		Authentication adm = new Authentication();
		adm.setPassword(rs.getString("password"));
		return adm;
	}
}
