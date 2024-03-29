package com.example.controller.response;

import com.example.domain.BookSalePost;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BookSalePostHomeResponse {
    private Long id;
    private String bookTitle;
    private String bookAuthor;
    private String bookPublisher;
    private String regularPrice;
    private String salePrice;
    private String bookImageURL;

    public static BookSalePostHomeResponse from(BookSalePost bookSalePost, String bookImageURL) {
        BookSalePostHomeResponse bookSalePostHomeResponse = new BookSalePostHomeResponse();
        bookSalePostHomeResponse.setId(bookSalePost.getId());
        bookSalePostHomeResponse.setBookTitle(bookSalePost.getBookTitle());
        bookSalePostHomeResponse.setBookAuthor(bookSalePost.getBookAuthor());
        bookSalePostHomeResponse.setBookPublisher(bookSalePost.getBookPublisher());
        bookSalePostHomeResponse.setRegularPrice(bookSalePost.getRegularPrice());
        bookSalePostHomeResponse.setSalePrice(bookSalePost.getSalePrice());
        bookSalePostHomeResponse.setBookImageURL(bookImageURL);
        return bookSalePostHomeResponse;
    }
}
