package org.ncu.Spring_E_Library_Project.controller;

import java.util.List;

import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.ncu.Spring_E_Library_Project.dao.BooksDao;
import org.ncu.Spring_E_Library_Project.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BookController {
	
	@Autowired
	private BooksDao libraryDao;
	
	/* Creating domain object/bean for data binding */
	@ModelAttribute("book")     //used for dynamic data binding
	public Book getBook() {
		return new Book();
	}
	
	/* Controller mapping for showing the input form */
	@RequestMapping(value="/showInsertForm", method=RequestMethod.GET)
	public String showStudentForm() {
		return "AddRecord";
	}
	
	
	/* Controller mapping for showing the input form */
	@RequestMapping(value="/options", method=RequestMethod.GET)
	public String showOptions() {
		return "options";
	}
	
	
	/* Controller mapping for showing the book list dashboard */
	@RequestMapping(value="/showDashboardCard", method=RequestMethod.GET)
	public String showBooksListCard(Model model) {
		List<Book> bookList = libraryDao.loadBooks();
		for(Book tempBook : bookList) {
			System.out.println(tempBook);
		}
		model.addAttribute("books", bookList);
		return "displayCards";
	}
	
	/* Controller mapping for showing the book list dashboard */
	@RequestMapping(value="/showDashboardTable", method=RequestMethod.GET)
	public String showBooksListTable(Model model) {
		List<Book> bookList = libraryDao.loadBooks();
		for(Book tempBook : bookList) {
			System.out.println(tempBook);
		}
		model.addAttribute("books", bookList);
		return "DisplayRecord";
	}
	
	/* Controller mapping for create/insert operation */
	@RequestMapping(value="/processForm", method=RequestMethod.POST )
	public String showProcessForm(@Valid @ModelAttribute("book") Book book, BindingResult br) {
		
		if (br.hasErrors()) {
			System.out.println("Error in br");
			return "AddRecord";
		}
		
		else {
			
			int record= libraryDao.insertRecord(book);
			if (record == 1){
				System.out.println("Records added successfully");
				JOptionPane.showMessageDialog(null,"Record added successfully", "SUCCESS" ,JOptionPane.INFORMATION_MESSAGE);
				return "options";
			} else if(record == -1) {
				JOptionPane.showMessageDialog(null,"Book already exists", "DUPLICATE ID" ,JOptionPane.INFORMATION_MESSAGE);
				return "AddRecord";
			}
			else {
				System.out.println("Error Occurred!!");
				return "AddRecord";
			}
		}
	}
	
	/* Controller mapping for update form */
	@RequestMapping(value="/updateForm", method=RequestMethod.GET)
	public String showUpdateForm(@RequestParam("id") int bookId, @ModelAttribute("book") Book book, Model model) {
		
		System.out.println("Getting the record for id: " + bookId);
		book = libraryDao.getBookRecord(bookId);
		/* send the book object to view */
		 model.addAttribute(book); 
		 System.out.println("Success");
		return "UpdateRecord";
	}
	
	/* Controller mapping for processing the update operation */
	@RequestMapping(value="/processUpdate", method=RequestMethod.POST)
	public String processUpdateForm(@Valid @ModelAttribute("book") Book book, BindingResult br) {
		if (br.hasErrors()) {
			return "UpdateRecord";
		}
		
		else {
			
		
			if(libraryDao.updateRecord(book) == 1) {
				System.out.println("Record update successfully!!");
				JOptionPane.showMessageDialog(null,"Record updated successfully", "SUCCESS" ,JOptionPane.INFORMATION_MESSAGE);
				return "options";
			}else {
				System.out.println("Error!!!");
				JOptionPane.showMessageDialog(null,"Error occured", "FAILURE" ,JOptionPane.INFORMATION_MESSAGE);
				return "UpdateRecord";
			}
		}
	}
	
	/* Controller mapping for processing the delete operation */
	@RequestMapping(value="/deleteRecord", method=RequestMethod.GET)
	public String deleteStudent(@RequestParam("id")int id) {
		
		if(libraryDao.deleteRecord(id) == 1) {
			System.out.println("Record deleted successfully!!");
			JOptionPane.showMessageDialog(null,"Record deleted successfully", "SUCCESS" ,JOptionPane.INFORMATION_MESSAGE);
			
		}else {
			System.out.println("Error!!!");
			JOptionPane.showMessageDialog(null,"Error occured", "FAILURE" ,JOptionPane.INFORMATION_MESSAGE);
		}		
		return "redirect:/options";
	}
	
	/* Controller mapping for searching book form */
	@RequestMapping(value="/searchForm", method=RequestMethod.GET)
	public String searchForm(@RequestParam("title") String name, @ModelAttribute("book") List<Book> bookList, Model model) {
		
		try {
			System.out.println("Getting data for book : "+ name);
			bookList = libraryDao.getBookRecordByName(name);

			if (bookList.isEmpty() ){
				System.out.println("No data");
				return "nullEntry";
			}
			
			else {
				/* send the student object to view */
				model.addAttribute("books", bookList); 
				return "showBooks";
			}
			
		}
		catch(Exception e) {
			System.out.println("exc: " + e);
			return "void";
		}
	}

	
	/*Controller for entering id to view it*/
	@RequestMapping(value="/viewBooks", method=RequestMethod.GET)
	public String processId(Model model) {
		List<Book> bookList = libraryDao.loadBooks();
		model.addAttribute("books", bookList);
		
		return "showBooks";
	}
	
	/* Controller mapping for searching book form */
	@RequestMapping(value="/filterByCategory", method=RequestMethod.POST)
	public String filterByCategory(@RequestParam("bookCategory") String category, @ModelAttribute("book") List<Book> bookList, Model model) {
		
		try {
			System.out.println("Getting data for book : "+ category);
			bookList = libraryDao.getBookRecordByCategory(category);

			if (bookList.isEmpty() ){
				System.out.println("No data");
				return "nullEntry";
			}
			
			else {
				/* send the student object to view */
				model.addAttribute("books", bookList); 
				return "showBooks";
			}
			
		}
		catch(Exception e) {
			System.out.println("exc: " + e);
			return "void";
		}
	}
}
