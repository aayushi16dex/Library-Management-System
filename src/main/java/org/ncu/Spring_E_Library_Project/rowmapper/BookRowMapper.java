package org.ncu.Spring_E_Library_Project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.ncu.Spring_E_Library_Project.entity.Book;
import org.springframework.jdbc.core.RowMapper;

public class BookRowMapper implements RowMapper<Book> {

	@Override
	public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
		Book b = new Book();
		
		b.setId(rs.getString("id"));
		b.setTitle(rs.getString("title"));
		b.setAuthor(rs.getString("author"));
		b.setPrice(rs.getString("price"));
		b.setQty(rs.getString("qty"));
		b.setBookCategory(rs.getString("bookCategory"));
		return b;
	}
}