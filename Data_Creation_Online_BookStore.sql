-- Customer Information Table
CREATE TABLE Customer_Information (
    UserID INT PRIMARY KEY,
    CustomerName VARCHAR(70),
    CustomerAddress VARCHAR(70),
    CustomerEmail VARCHAR(70),
    CustomerPhoneNumber VARCHAR(70),
    CustomerUserName VARCHAR(70),
    CustomerPassword VARCHAR(70),
    PaymentInfo VARCHAR(70)
);

-- Book Information Table
CREATE TABLE Book_Information (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(70),
    BookAuthor VARCHAR(70),
    BookPublisher VARCHAR(70),
    BookGenre VARCHAR(70),
    BookPublicationDate VARCHAR(70),
    BookPrice DECIMAL(10, 2),
    StockQuantity VARCHAR(70),
    BookCategory VARCHAR(70)
);

-- Order Information Table
CREATE TABLE Order_Information (
    OrderID INT PRIMARY KEY,
    UserID INT,
    BookID INT,
    OrderDate TIMESTAMP,
    DeliverAddress VARCHAR2(70), 
    OrderStatus VARCHAR2(70),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (UserID) REFERENCES Customer_Information(UserID),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);

-- Transaction Information --
CREATE TABLE Transaction_Information (
    TransactionID INT PRIMARY KEY,
    OrderID INT,
    UserID INT,
    BookID INT, 
    PaymentStatus INT,
    PaymentMethod VARCHAR(70),
    TransactionDate TIMESTAMP,
    FOREIGN KEY (OrderID) REFERENCES Order_Information(OrderID),
    FOREIGN KEY (UserID) REFERENCES Customer_Information(UserID),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);


-- Employee Information Table
CREATE TABLE Employee_Information (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(70),
    EmployeePosition VARCHAR(70),
    EmployeeEmail VARCHAR(70),
    EmployeeUserName VARCHAR(70),
    EmployeePassword VARCHAR(70)
);

-- Stock Information Table
CREATE TABLE Stock_Information (
    BookID INT PRIMARY KEY,
    QuantityOfBook INT
);

-- Publisher Information Table
CREATE TABLE Publisher_Information (
    PublisherID INT PRIMARY KEY,
    BookID INT,
    PublisherName VARCHAR(70),
    PublisherAddress VARCHAR(70),
    PublisherEmail VARCHAR(70),
    PublisherPhoneNumber VARCHAR(70),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);

-- Author Information Table
CREATE TABLE Author_Information (
    AuthorID INT PRIMARY KEY,
    BookID INT,
    AuthorName VARCHAR(70),
    AuthorAddress VARCHAR(70),
    AuthorEmail VARCHAR(70),
    AuthorPhoneNumber VARCHAR(70),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);

-- Discount Information Table
CREATE TABLE Discount_Information (
    DiscountID INT PRIMARY KEY,
    BookID INT,
    DiscountCode VARCHAR(70),
    DiscountPercentage VARCHAR(70),
    ValidFrom DATE,
    ValidTo DATE,
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);


-- Promotion Information Table
CREATE TABLE Promotion_Information (
    PromotionID INT PRIMARY KEY,
    BookID INT,
    PromotionName VARCHAR(70),
    PromotionDescription VARCHAR(70),
    PromotionCode VARCHAR(70),
    DiscountPercentage VARCHAR(70),
    ValidFrom DATE,
    ValidTo DATE,
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);


-- Shipping Information Table
CREATE TABLE Shipping_Information (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    ShippingMethod VARCHAR(70),
    ShippingCost VARCHAR(70),
    EstimatedDeliveryTime VARCHAR(70),
    FOREIGN KEY (OrderID) REFERENCES Order_Information(OrderID)
);

-- Category Information Table
CREATE TABLE Category_Information (
    CategoryID INT PRIMARY KEY,
    BookID INT,
    CategoryName VARCHAR(70),
    CategoryDescription VARCHAR(70),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);

-- Review Information Table
CREATE TABLE Review_Information (
    ReviewID INT PRIMARY KEY,
    BookID INT,
    UserID INT,
    ReviewText VARCHAR(70),
    Rating INT,
    ReviewDate TIMESTAMP,
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID),
    FOREIGN KEY (UserID) REFERENCES Customer_Information(UserID)
);

-- Return Information Table
CREATE TABLE Return_Information (
    ReturnID INT PRIMARY KEY,
    OrderID INT,
    UserID INT,
    BookID INT,
    ReviewText VARCHAR(70),
    Rating INT,
    ReturnDate TIMESTAMP,
    ReturnStatus VARCHAR(70),
    RefundAmount VARCHAR(70),
    FOREIGN KEY (OrderID) REFERENCES Order_Information(OrderID),
    FOREIGN KEY (UserID) REFERENCES Customer_Information(UserID),
    FOREIGN KEY (BookID) REFERENCES Book_Information(BookID)
);


