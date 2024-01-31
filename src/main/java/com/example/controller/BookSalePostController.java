package com.example.controller;

import com.example.controller.request.BookSaleRequest;
import com.example.controller.response.BookSalePostHomeResponse;
import com.example.service.BookSalePostService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BookSalePostController {

    private final BookSalePostService bookSalePostService;

    @GetMapping("/add_book")
    public String addBookSalePost(){
        return "add_book";
    }

    @PostMapping("/add_book")
    public String addBookSalePostPost(BookSaleRequest bookSaleRequest){
        bookSalePostService.addBookSalePost(bookSaleRequest);
        return "redirect:/books";
    }
    @GetMapping("/books")
    public String bookSalePostList(Model model){
        List<BookSalePostHomeResponse> bookSalePostHomeResponseList= bookSalePostService.getBookSalePostList();
        model.addAttribute("books", bookSalePostHomeResponseList);
        return "book";
    }

    @GetMapping("/books/{id}")
    public String bookSalePostDetail(@PathVariable("id") Long id, Model model){
        model.addAttribute("book", bookSalePostService.getBook(id));
        return "view";
    }
}
