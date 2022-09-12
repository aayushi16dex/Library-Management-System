package org.ncu.Spring_E_Library_Project.dao;

import java.util.List;

import org.ncu.Spring_E_Library_Project.entity.Book;

public interface BooksDao {
	
//	Insert a book record
	public int insertRecord(Book book);

//	List all the books
	public List<Book> loadBooks();
	
//	Search a book record 
	public Book getBookRecord(int id);
	
//	Search a book record by name 
	public List<Book> getBookRecordByName(String name);
	
//	Search a book record by category 
	public List<Book> getBookRecordByCategory(String category);
	
//	Update an existing book record 
	public int updateRecord(Book book);
	
//	Delete a book record 
	public int deleteRecord(int id);
	
}
