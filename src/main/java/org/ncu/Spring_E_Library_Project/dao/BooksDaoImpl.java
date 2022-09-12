package org.ncu.Spring_E_Library_Project.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.ncu.Spring_E_Library_Project.entity.Book;
import org.ncu.Spring_E_Library_Project.rowmapper.BookRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BooksDaoImpl implements BooksDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public int insertRecord(Book book) {
		
		String insertQuery = "insert into books values (?,?,?,?,?,?)";
		Object[] args = {book.getId(), book.getTitle(), book.getAuthor(), book.getPrice(), book.getQty(), book.getBookCategory()};
		
		try {
			int row = jdbcTemplate.update(insertQuery, args);
			return row;
		}
		catch(Exception e) {				
			System.out.println("Error ==> Duplicate key :" +  e);
			return -1;
		}
		
	}

	@Override
	public List<Book> loadBooks() {
		List<Book> bookList = new ArrayList<Book>();
		String selectQuery = "select * from books";
		RowMapper<Book> rowMapper = new BookRowMapper();
		bookList = jdbcTemplate.query(selectQuery, rowMapper);
		return bookList;
	}

	@Override
	public Book getBookRecord(int id) {
		String getRecord = "select * from books where id=?";
		Book bookRecord = jdbcTemplate.queryForObject(getRecord, new BookRowMapper(), id);
		return bookRecord;
	}

	@Override
	public int updateRecord(Book book) {
		String updateQuery = "update books set bookCategory=?, title=?, author=?, price=?, qty=? where id=?";
		Object[] args = { book.getBookCategory(),book.getTitle(), book.getAuthor(), book.getPrice(), book.getQty(), book.getId()};
		int row = jdbcTemplate.update(updateQuery, args);
		return row;
	}

	@Override
	public int deleteRecord(int id) {
		String deleteQuery = "delete from books where id=?";
		int row = jdbcTemplate.update(deleteQuery, id);
		return row;
		
	}

	@Override
	public List<Book> getBookRecordByCategory(String category) {
		try {
		
			String getRecord = "select * from books where bookCategory =?";
			System.out.println("sql: " + getRecord);

			System.out.println("Category:" + category);
			List<Book> bookRecordsFiltered = new ArrayList<Book>();
			
			bookRecordsFiltered = jdbcTemplate.query(getRecord, new BookRowMapper(), category);
//			Book bookRecordsFiltered = jdbcTemplate.queryForObject(getRecord, new BookRowMapper());
			

			System.out.println("book record: " + bookRecordsFiltered);
			return bookRecordsFiltered;
		}
		catch (Exception e) {
			System.out.println("Exception is: " + e);
			return null;
		}
	}
	
	@Override
	public List<Book> getBookRecordByName(String name) {
		try {
		
			String getRecord = "select * from books where title like \"%"+ name+ "%\"";
			System.out.println("sql: " + getRecord);
//			String getRecord = "select * from books where title like '%M%'";

			if (name.equals(null)) {
				
				name = "";
			}
			System.out.println("Sending request");
			System.out.println("Name:" + name);
			List<Book> bookRecordsFiltered = new ArrayList<Book>();
			
			bookRecordsFiltered = jdbcTemplate.query(getRecord, new BookRowMapper());
//			Book bookRecordsFiltered = jdbcTemplate.queryForObject(getRecord, new BookRowMapper());
			

			System.out.println("book record: " + bookRecordsFiltered);
			return bookRecordsFiltered;
		}
		catch (Exception e) {
			System.out.println("Exception is: " + e);
			return null;
		}
	}

}
