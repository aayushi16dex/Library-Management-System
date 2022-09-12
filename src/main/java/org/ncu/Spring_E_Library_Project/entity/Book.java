package org.ncu.Spring_E_Library_Project.entity;

import java.util.LinkedHashMap;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

public class Book {

	@NotEmpty(message="This is a required field")
	private String bookCategory;
	
	private LinkedHashMap<String, String> categoryOptions;
	
	@NotEmpty(message="This is a required field")
	@Pattern(regexp="^[0-9]*$", message = "Only integers")
	private String id;
	
	@NotEmpty(message="This is a required field")
	private String title;
	
	@NotEmpty(message="This is a required field")
	private String author;
	
	@NotEmpty(message="This is a required field")
	@Pattern(regexp="^[0-9]\\d{0,9}(\\.\\d{1,3})?%?$", message = "Only integers/ decimals")      //checks for decimal numbers
	private String price;
	
	@NotEmpty(message="This is a required field")
	@Pattern(regexp="^[0-9]*$", message = "Only integers")
	private String qty;
	
	
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}
	public LinkedHashMap<String, String> getCategoryOptions() {
		return categoryOptions;
	}
	public void setCategoryOptions(LinkedHashMap<String, String> categoryOptions) {
		this.categoryOptions = categoryOptions;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	
	
	@Override
	public String toString() {
		return "[bookCategory=" + bookCategory + ", id=" + id + ", title="
				+ title + ", author=" + author + ", price=" + price + ", qty=" + qty + "]";
	}
	public Book(){
		/* Adding values inside dropdown list <key,label> */
		
		categoryOptions = new LinkedHashMap<String, String>();
		
		categoryOptions.put("none","Select Category");
		categoryOptions.put("Art and Design","Art and Design");
		categoryOptions.put("Arts and Humanities","Arts and Humanities");
		categoryOptions.put("Astrology","Astrology");
		categoryOptions.put("Banking","Banking");
		categoryOptions.put("Business and Economics","Business and Economics");
		categoryOptions.put("Civil Services","Civil Services");
		categoryOptions.put("Computer Science","Computer Science");
		categoryOptions.put("Crime, Thriller and Mystery","Crime, Thriller and Mystery");
		categoryOptions.put("Engineering","Engineering");	
		categoryOptions.put("Health","Health");
		categoryOptions.put("Information and Technology","Information and Technology");
		categoryOptions.put("Languages","Languages");
		categoryOptions.put("Literature and Fiction","Literature and Fiction");
		categoryOptions.put("Magazines","Magazines");
		categoryOptions.put("Management","Management");
		categoryOptions.put("Mathematics and Science","Mathematics and Science");
		categoryOptions.put("Medical","Medical");
		categoryOptions.put("Novels","Novels");
		categoryOptions.put("Psychology","Psychology");
		categoryOptions.put("Romance and Comedy","Romance and Comedy");
		categoryOptions.put("School Text Books","School Text Books");
		categoryOptions.put("Self Help Books","Self Help Books");
		categoryOptions.put("Social Studies","Social Studies");
		categoryOptions.put("Teen and Young Adult","Teen and Young Adult");
		categoryOptions.put("Theology","Theology");
		
		categoryOptions.put("Others","Others");
		
		}
}
