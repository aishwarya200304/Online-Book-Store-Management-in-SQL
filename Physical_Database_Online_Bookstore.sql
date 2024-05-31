-- Sequence
CREATE SEQUENCE return_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Inserting data into Return_Information using the sequence
INSERT INTO Return_Information (ReturnID, OrderID, UserID, BookID, ReviewText, Rating, ReturnDate, ReturnStatus, RefundAmount)
VALUES (return_seq.NEXTVAL, 13, 10, 1110, 'Defective product', 2, TO_TIMESTAMP('2023-12-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pending', '50.00');

select * from return_information;


SET SERVEROUTPUT ON;

-- View
  FUNCTION Get_Return_View RETURN SYS_REFCURSOR IS
    v_cursor SYS_REFCURSOR;
  BEGIN
    OPEN v_cursor FOR
    SELECT * FROM Return_View;
    RETURN v_cursor;
  END Get_Return_View;

END Bookstore_Package;
/


--cursor
DECLARE
  -- Declare variables to store column values from the Return_View
  v_ReturnID Return_Information.ReturnID%TYPE;
  v_OrderID Return_Information.OrderID%TYPE;
  v_UserID Return_Information.UserID%TYPE;
  v_BookID Return_Information.BookID%TYPE;
  v_ReviewText Return_Information.ReviewText%TYPE;
  v_Rating Return_Information.Rating%TYPE;
  v_ReturnDate Return_Information.ReturnDate%TYPE;
  v_ReturnStatus Return_Information.ReturnStatus%TYPE;
  v_RefundAmount Return_Information.RefundAmount%TYPE;
  v_OrderDate Order_Information.OrderDate%TYPE;
  v_ShippingAddress VARCHAR2(70); -- Declare as a separate variable
  v_CustomerName Customer_Information.CustomerName%TYPE;
  v_BookTitle Book_Information.BookTitle%TYPE;

  -- Declare a cursor to fetch data from the Return_View
  CURSOR return_cursor IS
    SELECT
      r.ReturnID,
      r.OrderID,
      r.UserID,
      r.BookID,
      r.ReviewText,
      r.Rating,
      r.ReturnDate,
      r.ReturnStatus,
      r.RefundAmount,
      o.OrderDate,
      o.DeliverAddress AS ShippingAddress,
      c.CustomerName,
      b.BookTitle
    FROM
      Return_Information r
    JOIN
      Order_Information o ON r.OrderID = o.OrderID
    JOIN
      Customer_Information c ON r.UserID = c.UserID
    JOIN
      Book_Information b ON r.BookID = b.BookID;

BEGIN
  -- Open the cursor
  OPEN return_cursor;

  -- Fetch data from the cursor and loop through the records
  LOOP
    FETCH return_cursor INTO
      v_ReturnID,
      v_OrderID,
      v_UserID,
      v_BookID,
      v_ReviewText,
      v_Rating,
      v_ReturnDate,
      v_ReturnStatus,
      v_RefundAmount,
      v_OrderDate,
      v_ShippingAddress,
      v_CustomerName,
      v_BookTitle;

    EXIT WHEN return_cursor%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('ReturnID: ' || v_ReturnID || ', OrderID: ' || v_OrderID || ', BookTitle: ' || v_BookTitle);

  END LOOP;

  -- Close the cursor
  CLOSE return_cursor;
END;
/

--Function no 1

CREATE OR REPLACE FUNCTION get_total_stock_quantity(book_id IN NUMBER) RETURN NUMBER IS
    v_quantity NUMBER;
BEGIN
    -- Retrieving the total stock quantity for the given book_id
    SELECT MAX(quantityofbook) INTO v_quantity
    FROM Stock_Information
    WHERE book_id = get_total_stock_quantity.book_id;

    RETURN v_quantity;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL; -- Book not found in the stock information
END get_total_stock_quantity;

-- Test the get_total_stock_quantity function
DECLARE
    v_book_id NUMBER := 1103; 
    v_stock_quantity NUMBER;
BEGIN
    -- Calling the function
    v_stock_quantity := get_total_stock_quantity(v_book_id);

    -- Displaying the result
    IF v_stock_quantity IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Total stock quantity for Book ID ' || v_book_id || ': ' || v_stock_quantity);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Book ID ' || v_book_id || ' not found in stock information.');
    END IF;
END;

select * from stock_information;

-- Function 2
-- retrieves the average rating of a book based on its reviews
CREATE OR REPLACE FUNCTION get_average_book_rating(book_id IN NUMBER) RETURN NUMBER IS
    v_average_rating NUMBER;
BEGIN
    -- Retrieve the average rating for the given book_id
    SELECT AVG(rating)
    INTO v_average_rating
    FROM Review_Information
    WHERE book_id = get_average_book_rating.book_id;

    RETURN v_average_rating;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL; -- Book not found in the review information
END get_average_book_rating;

-- Test the function
DECLARE
    v_book_id NUMBER := 1102;
    v_average_rating NUMBER;
BEGIN
    -- Calling the function
    v_average_rating := get_average_book_rating(v_book_id);

    -- Displaying the result
    IF v_average_rating IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Average rating for Book ID ' || v_book_id || ': ' || v_average_rating);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Book ID ' || v_book_id || ' not found in review information.');
    END IF;
END;


-- Procedure
-- A procedure that handles the processing of returns in the system.
CREATE OR REPLACE PROCEDURE process_return(p_return_id IN NUMBER) IS
    v_order_id NUMBER;
    v_user_id NUMBER;
    v_book_id NUMBER;
    v_refund_amount VARCHAR2(70);
BEGIN
    -- Retrieve information about the return
    SELECT OrderID, UserID, BookID, RefundAmount
    INTO v_order_id, v_user_id, v_book_id, v_refund_amount
    FROM Return_Information
    WHERE ReturnID = p_return_id;
    
    -- Update return status
    UPDATE Return_Information
    SET ReturnStatus = 'Processed'
    WHERE ReturnID = p_return_id;

    DBMS_OUTPUT.PUT_LINE('Refund processed for Return ID ' || p_return_id || ': $' || v_refund_amount);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Return ID ' || p_return_id || ' not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error processing return: ' || SQLERRM);
END process_return;

-- Test Procedure
DECLARE
    v_return_id NUMBER := 2; -- Replace with the desired return_id
BEGIN
    -- Call the procedure
    process_return(v_return_id);
    DBMS_OUTPUT.PUT_LINE('Return processed successfully.');
END;

--Trigger
CREATE OR REPLACE TRIGGER book_insert_trigger
AFTER UPDATE OR DELETE ON Book_Information FOR EACH ROW
DECLARE
    v_initial_stock NUMBER := 0; 
BEGIN

-- Insert the new book into Stock_Information with an initial stock quantity
INSERT INTO Stock_Information (BookID, QuantityOfBook)
VALUES (:NEW.BookID, v_initial_stock);
END;

SELECT * FROM Book_Information;
SELECT * FROM Stock_Information;

ROLLBACK;

--compound trigger
-- Create or replace a compound trigger for managing return processing
CREATE OR REPLACE TRIGGER return_management
FOR INSERT OR UPDATE OR DELETE ON Return_Information
COMPOUND TRIGGER

  -- Declaration section for variables that maintain state across trigger events
  v_total_returns NUMBER := 0;

  BEFORE STATEMENT IS
  BEGIN
  
    v_total_returns := 0;
  END BEFORE STATEMENT;

  BEFORE EACH ROW IS
  BEGIN

    v_total_returns := v_total_returns + 1;
  END BEFORE EACH ROW;

  AFTER STATEMENT IS
  BEGIN

    IF v_total_returns > 0 THEN
      -- Call a procedure or perform additional actions after the statement
      FOR returned_row IN (SELECT RETURNID FROM Return_Information) LOOP
        Bookstore_Package.Process_Return(returned_row.RETURNID);
      END LOOP;
    END IF;
  END AFTER STATEMENT;

END return_management;
/

--Packages--

-- Create a package to encapsulate related procedures and functions
CREATE OR REPLACE PACKAGE Bookstore_Package AS
  -- Function 1: Retrieve total stock quantity for a book
  FUNCTION Get_Total_Stock_Quantity(p_book_id IN NUMBER) RETURN NUMBER;

  -- Function 2: Retrieve average rating for a book
  FUNCTION Get_Average_Book_Rating(p_book_id IN NUMBER) RETURN NUMBER;

  -- Procedure: Process a return
  PROCEDURE Process_Return(p_return_id IN NUMBER);

  -- View: Return_View
  FUNCTION Get_Return_View RETURN SYS_REFCURSOR;
END Bookstore_Package;
/

CREATE OR REPLACE PACKAGE BODY Bookstore_Package AS
  -- Function 1
  FUNCTION Get_Total_Stock_Quantity(p_book_id IN NUMBER) RETURN NUMBER IS
    v_quantity NUMBER;
  BEGIN
    SELECT MAX(quantityofbook) INTO v_quantity
    FROM Stock_Information
    WHERE book_id = p_book_id;
    RETURN v_quantity;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
  END Get_Total_Stock_Quantity;

  -- Function 2
  FUNCTION Get_Average_Book_Rating(p_book_id IN NUMBER) RETURN NUMBER IS
    v_average_rating NUMBER;
  BEGIN
    SELECT AVG(rating) INTO v_average_rating
    FROM Review_Information
    WHERE book_id = p_book_id;
    RETURN v_average_rating;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
  END Get_Average_Book_Rating;

