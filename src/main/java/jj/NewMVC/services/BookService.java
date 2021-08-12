package jj.NewMVC.services;

import java.util.List;
import org.springframework.stereotype.Service;

import jj.NewMVC.models.Book;
import jj.NewMVC.repositories.BookRepository;
@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
    	return this.bookRepository.findById(id).orElse(null);
    }
    
    public void deleteBook(Long id) {
    	this.bookRepository.deleteById(id);
    }
    
    public Book updateBook(Book b) {
    	
    	return this.bookRepository.save(b);
    } 
     
	
}