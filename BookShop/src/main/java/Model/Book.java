package model;

import dao.AuthorDao;

import java.util.Base64;
import java.util.Date;

public class Book {
    private int id;
    private String title;
    private int authorId;
    private String isbn;
    private float price;
    private Date publishedDate;
    private String genre;
    private String description;
    private String language;
    private int pages;
    private String publisher;
    private int stockQuantity;
    private int rating;
    private byte[] coverImage;


    // Constructor


    public Book(String title, int authorId, String isbn, float price, Date publishedDate, String genre, String description, String language, int pages, String publisher, int stockQuantity, int rating, byte[] coverImage) {
        this.title = title;
        this.authorId = authorId;
        this.isbn = isbn;
        this.price = price;
        this.publishedDate = publishedDate;
        this.genre = genre;
        this.description = description;
        this.language = language;
        this.pages = pages;
        this.publisher = publisher;
        this.stockQuantity = stockQuantity;
        this.rating = rating;
        this.coverImage = coverImage;
    }

    public Book(int id, String title, int authorId, String isbn, float price, Date publishedDate,
                String genre, String description, String language, int pages, String publisher, int stockQuantity,
                int rating, byte[] coverImage) {
        this.id = id;
        this.title = title;
        this.authorId = authorId;
        this.isbn = isbn;
        this.price = price;
        this.publishedDate = publishedDate;
        this.genre = genre;
        this.description = description;
        this.language = language;
        this.pages = pages;
        this.publisher = publisher;
        this.stockQuantity = stockQuantity;
        this.rating = rating;
        this.coverImage = coverImage;
    }

    public Book() {
    }


    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public byte[] getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(byte[] coverImage) {
        this.coverImage = coverImage;
    }






    public static String getAuthorName(int authorId)
    {
        AuthorDao authorDao = new AuthorDao();
        String name  = authorDao.getAuthorById(authorId).getName();
        return name;
    }


    public static String convertToBase64(byte[] imageBytes) {
        String base64Image = Base64.getEncoder().encodeToString(imageBytes);
        return base64Image;
    }









}


