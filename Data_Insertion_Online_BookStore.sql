-- Customer Information ---
INSERT INTO Customer_Information VALUES(1, 'Raj Kumar', '123 Main Street, Delhi', 'raj@gmail.com', '9876543210', 'raj_kumar', 'password123', 'Credit Card');
INSERT INTO Customer_Information VALUES(2, 'Priya Sharma', '456 Oak Lane, Mumbai', 'priya@gmail.com', '8765432109', 'priya_sharma', 'securepass', 'PayPal');
INSERT INTO Customer_Information VALUES(3, 'Amit Verma', '789 Pine Road, Bangalore', 'amit@gmail.com', '7654321098', 'amit_verma', 'pass123', 'Net Banking');
INSERT INTO Customer_Information VALUES(4, 'Sophia Johnson', '101 Cedar Avenue, New York', 'sophia@gmail.com', '5551234567', 'sophia_johnson', 'sophiapass', 'Credit Card');
INSERT INTO Customer_Information VALUES(5, 'Daniel Smith', '202 Redwood Street, London', 'daniel@gmail.com', '4442345678', 'daniel_smith', 'danielpass', 'PayPal');
INSERT INTO Customer_Information VALUES(6, 'Anjali Singh', '303 Maple Drive, Hyderabad', 'anjali@gmail.com', '4321098765', 'anjali_singh', 'anjali_pass', 'Credit Card');
INSERT INTO Customer_Information VALUES(7, 'Vikram Reddy', '404 Birch Lane, Pune', 'vikram@gmail.com', '3210987654', 'vikram_reddy', 'vikpass', 'PayPal');
INSERT INTO Customer_Information VALUES(8, 'Meera Khanna', '505 Elm Street, Ahmedabad', 'meera@gmail.com', '2109876543', 'meera_khanna', 'meera123', 'Net Banking');
INSERT INTO Customer_Information VALUES(9, 'Emily Brown', '606 Walnut Avenue, Sydney', 'emily@gmail.com', '9998765432', 'emily_brown', 'emilypass', 'Net Banking');
INSERT INTO Customer_Information VALUES(10, 'Aryan Kapoor', '707 Pine Road, Lucknow', 'aryan@gmail.com', '1098765432', 'aryan_kapoor', 'aryanpass', 'Debit Card');

-- Book Information --
INSERT INTO Book_Information VALUES(1101, 'The Guide', 'R.K. Narayan', 'Indian Publishers', 'Fiction', '2022-01-15', 15.99, '100', 'Classic');
INSERT INTO Book_Information VALUES(1102, 'To Kill a Mockingbird', 'Harper Lee', 'Vintage Books', 'Fiction', '2022-02-20', 18.99, '75', 'Classic');
INSERT INTO Book_Information VALUES(1103, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Penguin Books', 'Non-Fiction', '2022-03-25', 14.99, '50', 'History');
INSERT INTO Book_Information VALUES(1104, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 'Fiction', '2022-04-10', 21.99, '80', 'Classic');
INSERT INTO Book_Information VALUES(1105, 'The Power of Habit', 'Charles Duhigg', 'Random House', 'Non-Fiction', '2022-05-05', 17.99, '60', 'Self-Help');
INSERT INTO Book_Information VALUES(1106, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Bloomsbury', 'Fantasy', '2022-06-12', 29.99, '40', 'Children');
INSERT INTO Book_Information VALUES(1107, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 'Fiction', '2022-07-18', 17.99, '90', 'Classic');
INSERT INTO Book_Information VALUES(1108, 'Atomic Habits', 'James Clear', 'Avery', 'Non-Fiction', '2022-08-25', 21.99, '55', 'Self-Help');
INSERT INTO Book_Information VALUES(1109, 'The Hobbit', 'J.R.R. Tolkien', 'Allen ', 'Fantasy', '2022-09-30', 26.99, '30', 'Adventure');
INSERT INTO Book_Information VALUES(1110, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', 'Non-Fiction', '2022-10-15', 23.99, '65', 'Psychology');

-- Order Information -- 
INSERT INTO Order_Information  VALUES (11, 1, 1101, TO_DATE('2022-11-11', 'YYYY-MM-DD'), '123 Main Street, Delhi', 'Processing', 15.99);
INSERT INTO Order_Information  VALUES(12, 2, 1103,  TO_DATE('2022-11-12','YYYY-MM-DD'), '456 Oak Lane, Mumbai', 'Shipped', 14.99);
INSERT INTO Order_Information  VALUES(13, 3, 1105,  TO_DATE('2022-11-13','YYYY-MM-DD'), '789 Pine Road, Bangalore', 'Delivered', 17.99);
INSERT INTO Order_Information  VALUES(14, 4, 1107,TO_DATE( '2022-11-14','YYYY-MM-DD'), '101 Cedar Avenue, New York', 'Processing', 21.99);
INSERT INTO Order_Information  VALUES(15, 5, 1109, TO_DATE('2023-11-15','YYYY-MM-DD'), '202 Redwood Street, London', 'Shipped', 29.99);
INSERT INTO Order_Information  VALUES(16, 6, 1102,  TO_DATE('2021-10-6','YYYY-MM-DD'), '303 Maple Drive, Hyderabad', 'Delivered', 18.99);
INSERT INTO Order_Information  VALUES(17, 7, 1104, TO_DATE('2021-4-3','YYYY-MM-DD'), '404 Birch Lane, Pune', 'Processing', 21.99);
INSERT INTO Order_Information  VALUES(18, 8, 1106, TO_DATE('2022-4-3','YYYY-MM-DD'), '505 Elm Street, Ahmedabad', 'Shipped', 17.99);
INSERT INTO Order_Information  VALUES(19, 9, 1108,  TO_DATE('2019-3-4','YYYY-MM-DD'), '606 Walnut Avenue, Sydney', 'Delivered', 21.99);
INSERT INTO Order_Information  VALUES(20, 10, 1110,  TO_DATE('2017-2-1','YYYY-MM-DD'), '707 Pine Road, Lucknow', 'Processing', 23.99);



-- Transaction Information--

INSERT INTO Transaction_Information VALUES(2201, 11, 1, 1101, 'In-process', 'Credit Card', TO_TIMESTAMP('2022-11-11 09:30:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2202, 12, 2, 1103, 'In-process', 'Credit Card', TO_TIMESTAMP('2022-11-12 09:30:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2200, 13, 3, 1105, 'Completed','PayPal', TO_TIMESTAMP('2022-11-13 14:45:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2204, 14, 4, 1107, 'In-Completed', 'Net Banking', TO_TIMESTAMP('2022-11-14 18:10:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2205, 15, 5, 1109, 'Completed', 'Credit Card', TO_TIMESTAMP('2023-11-15 22:05:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2206, 16, 6, 1102, 'Completed', 'PayPal', TO_TIMESTAMP('2021-10-06 11:20:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2207, 17, 7, 1104, 'Completed', 'Net Banking', TO_TIMESTAMP('2021-4-3 15:40:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2208, 18, 8, 1106, 'Completed', 'Credit Card', TO_TIMESTAMP('2022-04-3 08:30:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2209, 19, 9, 1108, 'Completed', 'PayPal', TO_TIMESTAMP('2023-08-25 19:15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Transaction_Information VALUES(2210, 20, 10, 1110, 'In-process', 'Net Banking', TO_TIMESTAMP('2023-09-30 13:25:45', 'YYYY-MM-DD HH24:MI:SS'));

-- Employee Information--
INSERT INTO Employee_Information VALUES(1501, 'John Doe', 'Manager', 'john.doe@example.com', 'john_doe', 'password123');
INSERT INTO Employee_Information VALUES(1502, 'Jane Smith', 'Developer', 'jane.smith@example.com', 'jane_smith', 'securepass');
INSERT INTO Employee_Information VALUES(1503, 'Mike Johnson', 'Analyst', 'mike.johnson@example.com', 'mike_johnson', 'pass123');
INSERT INTO Employee_Information VALUES(1504, 'Emily Brown', 'Designer', 'emily.brown@gmail.com', 'emily_brown', 'designerpass');
INSERT INTO Employee_Information VALUES(1505, 'Alex Wilson', 'Engineer', 'alex.wilson@gmail.com', 'alex_wilson', 'engineerpass');
INSERT INTO Employee_Information VALUES(1506, 'Sara Davis', 'Manager', 'sara.davis@gmail.com', 'sara_davis', 'managerpass');
INSERT INTO Employee_Information VALUES(1507, 'Chris Evans', 'Developer', 'chris.evans@gmail.com', 'chris_evans', 'developerpass');
INSERT INTO Employee_Information VALUES(1508, 'Mia Turner', 'Analyst', 'mia.turner@gmail.com', 'mia_turner', 'analystpass');
INSERT INTO Employee_Information VALUES(1509, 'Tom Clark', 'Designer', 'tom.clark@gmail.com', 'tom_clark', 'tomdesignerpass');
INSERT INTO Employee_Information VALUES(1510, 'Sophie White', 'Engineer', 'sophie.white@gmail.com', 'sophie_white', 'engineerpass');

-- Stock Information--
INSERT INTO Stock_Information VALUES(1101, 100);
INSERT INTO Stock_Information VALUES(1102, 75);
INSERT INTO Stock_Information VALUES(1103, 50);
INSERT INTO Stock_Information VALUES(1104, 80);
INSERT INTO Stock_Information VALUES(1105, 60);
INSERT INTO Stock_Information VALUES(1106, 40);
INSERT INTO Stock_Information VALUES(1107, 90);
INSERT INTO Stock_Information VALUES(1108, 55);
INSERT INTO Stock_Information VALUES(1109, 30);
INSERT INTO Stock_Information VALUES(1110, 65);


-- Publisher Information--
INSERT INTO Publisher_Information VALUES(1701, 1101, 'Indian Publishers', '123 Main Street, Delhi', 'publisher1@gmail.com', '1234567890');
INSERT INTO Publisher_Information VALUES(1702, 1102, 'Vintage Books', '456 Oak Lane, Mumbai', 'publisher2@gmail.com', '2345678901');
INSERT INTO Publisher_Information VALUES(1703, 1103, 'Penguin Books', '789 Pine Road, Bangalore', 'publisher3@gmail.com', '3456789012');
INSERT INTO Publisher_Information VALUES(1704, 1104, 'Scribner', '101 Cedar Avenue, New York', 'publisher4@gmail.com', '4567890123');
INSERT INTO Publisher_Information VALUES(1705, 1105, 'Random House', '202 Redwood Street, London', 'publisher5@gmail.com', '5678901234');
INSERT INTO Publisher_Information VALUES(1706, 1106, 'Bloomsbury', '303 Maple Drive, Hyderabad', 'publisher6@gmail.com', '6789012345');
INSERT INTO Publisher_Information VALUES(1707, 1107, 'Little, Brown and Company', '404 Birch Lane, Pune', 'publisher7@gmail.com', '7890123456');
INSERT INTO Publisher_Information VALUES(1708, 1108, 'Avery', '505 Elm Street, Ahmedabad', 'publisher8@gmail.com', '8901234567');
INSERT INTO Publisher_Information VALUES(1709, 1109, 'Allen', '606 Walnut Avenue, Sydney', 'publisher9@gmail.com', '9012345678');
INSERT INTO Publisher_Information VALUES(1710, 1110, 'Farrar, Straus and Giroux', '707 Pine Road, Lucknow', 'publisher10@gmail.com', '0123456789');


-- Author Information--
INSERT INTO Author_Information VALUES(1801, 1101, 'R.K. Narayan', '789 Orchid Street, Chennai', 'rk_narayan@gmail.com', '1234567890');
INSERT INTO Author_Information VALUES(1802, 1102, 'Harper Lee', '456 Maple Avenue, Mumbai', 'harper_lee@gmail.com', '2345678901');
INSERT INTO Author_Information VALUES(1803, 1103, 'Yuval Noah Harari', '321 Pine Lane, Bangalore', 'yuval_harari@gmail.com', '3456789012');
INSERT INTO Author_Information VALUES(1804, 1104, 'F. Scott Fitzgerald', '987 Cedar Road, New York', 'f_scott_fitzgerald@gmail.com', '4567890123');
INSERT INTO Author_Information VALUES(1805, 1105, 'Charles Duhigg', '654 Redwood Drive, London', 'charles_duhigg@gmail.com', '5678901234');
INSERT INTO Author_Information VALUES(1806, 1106, 'J.K. Rowling', '210 Birch Street, Hyderabad', 'jk_rowling@gmail.com', '6789012345');
INSERT INTO Author_Information VALUES(1807, 1107, 'J.D. Salinger', '333 Elm Avenue, Pune', 'jd_salinger@gmail.com', '7890123456');
INSERT INTO Author_Information VALUES(1808, 1108, 'James Clear', '444 Walnut Road, Ahmedabad', 'james_clear@gmail.com', '8901234567');
INSERT INTO Author_Information VALUES(1809, 1109, 'J.R.R. Tolkien', '555 Pine Road, Sydney', 'jrr_tolkien@gmail.com', '9012345678');
INSERT INTO Author_Information VALUES(1810, 1110, 'Daniel Kahneman', '666 Oak Lane, Lucknow', 'daniel_kahneman@gmail.com', '0123456789');

-- Discount Information--

INSERT INTO Discount_Information VALUES(1901, 1101, 'DISC10', 10.00, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1902, 1102, 'SALE15', 15.00, TO_DATE('2022-02-15', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1903, 1103, 'EARLYBIRD', 20.00, TO_DATE('2022-03-01', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1904, 1104, 'FLASH20', 25.00, TO_DATE('2022-04-10', 'YYYY-MM-DD'), TO_DATE('2022-05-10', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1905, 1105, 'MIDYEAR25', 30.00, TO_DATE('2022-05-15', 'YYYY-MM-DD'), TO_DATE('2022-06-15', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1906, 1106, 'SUMMER30', 35.00, TO_DATE('2022-06-01', 'YYYY-MM-DD'), TO_DATE('2022-07-01', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1907, 1107, 'SUNNYDAY', 40.00, TO_DATE('2022-07-18', 'YYYY-MM-DD'), TO_DATE('2022-08-18', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1908, 1108, 'AUGUST45', 45.00, TO_DATE('2022-08-25', 'YYYY-MM-DD'), TO_DATE('2022-09-25', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1909, 1109, 'SEPTEMBER50', 50.00, TO_DATE('2022-09-30', 'YYYY-MM-DD'), TO_DATE('2022-10-30', 'YYYY-MM-DD'));
INSERT INTO Discount_Information VALUES(1910, 1110, 'OCTOBERSALE', 55.00, TO_DATE('2022-10-15', 'YYYY-MM-DD'), TO_DATE('2022-11-15', 'YYYY-MM-DD'));

-- Promotion Information--
INSERT INTO Promotion_Information VALUES(2011, 1102, 'SummerEscape', 'Escape the heat with these cool summer reads.', 'SUMMER21', 18.00, TO_DATE('2023-06-15', 'YYYY-MM-DD'), TO_DATE('2023-07-15', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2012, 1104, 'AdventureAwaits', 'Embark on thrilling adventures with our specially curated collection.', 'ADVENTURE23', 22.50, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-31', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2013, 1106, 'MagicalWorld', 'Step into a magical world with enchanting stories for all ages.', 'MAGIC2023', 27.00, TO_DATE('2023-08-10', 'YYYY-MM-DD'), TO_DATE('2023-08-31', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2014, 1108, 'HealthAndWellness', 'Nurture your mind and body with books on health and wellness.', 'WELLNESS23', 15.00, TO_DATE('2023-09-05', 'YYYY-MM-DD'), TO_DATE('2023-09-30', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2015, 1110, 'MindfulReading', 'Experience the joy of mindful reading .', 'MINDFUL23', 20.00, TO_DATE('2023-10-15', 'YYYY-MM-DD'), TO_DATE('2023-11-15', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2016, 1109, 'EpicFantasy', 'Dive into epic fantasy worlds with these captivating tales.', 'EPICFANTASY23', 25.00, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-30', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2017, 1103, 'HolidayJoy', 'Spread holiday joy with heartwarming stories and festive discounts.', 'HOLIDAY23', 30.00, TO_DATE('2023-12-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2018, 1105, 'NewYearNewReads', 'Start the new year with exciting new reads and exclusive discounts.', 'NEWYEAR23', 22.00, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2019, 1107, 'RomanceBliss', 'Indulge in the bliss of romance with our handpicked romantic novels.', 'ROMANCE23', 18.50, TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2024-02-29', 'YYYY-MM-DD'));
INSERT INTO Promotion_Information VALUES(2020, 1101, 'SpringIntoReading', 'Welcoming spring with fresh reads and delightful discounts.', 'SPRING23', 20.50, TO_DATE('2022-03-20', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'));

--- Shipping Information--
INSERT INTO Shipping_Information VALUES(2101, 11, 'Standard Shipping', '5.99', '5-7 business days');
INSERT INTO Shipping_Information VALUES(2102, 12, 'Express Shipping', '8.99', '3-5 business days');
INSERT INTO Shipping_Information VALUES(2103, 13, 'Free Shipping', '0.00', '7-10 business days');
INSERT INTO Shipping_Information VALUES(2104, 14, 'Standard Shipping', '5.99', '5-7 business days');
INSERT INTO Shipping_Information VALUES(2105, 15, 'Two-Day Shipping', '12.99', '2 business days');
INSERT INTO Shipping_Information VALUES(2106, 16, 'Express Shipping', '8.99', '3-5 business days');
INSERT INTO Shipping_Information VALUES(2107, 17, 'Standard Shipping', '5.99', '5-7 business days');
INSERT INTO Shipping_Information VALUES(2108, 18, 'Free Shipping', '0.00', '7-10 business days');
INSERT INTO Shipping_Information VALUES(2109, 19, 'Two-Day Shipping', '12.99', '2 business days');
INSERT INTO Shipping_Information VALUES(2110, 20, 'Standard Shipping', '5.99', '5-7 business days');



-- Category Information--
INSERT INTO Category_Information VALUES(2001, 1101, 'Fiction', 'Works of imaginative narration, often set in the real world');
INSERT INTO Category_Information VALUES(2002, 1102, 'Fiction', 'Classic novel exploring moral growth and racism');
INSERT INTO Category_Information VALUES(2003, 1103, 'Non-Fiction', 'A brief history of humankind');
INSERT INTO Category_Information VALUES(2004, 1104, 'Fiction', 'Exploration of decadence in Jazz Ae America');
INSERT INTO Category_Information VALUES(2005, 1105, 'Non-Fiction', 'Exploring the science of habit formation');
INSERT INTO Category_Information VALUES(2006, 1106, 'Fantasy', 'Magical adventures of a young wizard');
INSERT INTO Category_Information VALUES(2007, 1107, 'Fiction', 'Coming-of-age novel by J.D. Salinger');
INSERT INTO Category_Information VALUES(2008, 1108, 'Non-Fiction', 'Atomic Habits and behavior change');
INSERT INTO Category_Information VALUES(2009, 1109, 'Fantasy', 'Journey of Bilbo Baggins in a fantasy world');
INSERT INTO Category_Information VALUES(2010, 1110, 'Non-Fiction', 'Exploring human decision-making and psychology');

-- Review Information--
INSERT INTO Review_Information VALUES(301, 1101, 1, 'Great book! Enjoyed the storyline.', 5, TO_TIMESTAMP('2022-11-12 10:15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(302, 1102, 2, 'A classic that everyone should read.', 4, TO_TIMESTAMP('2022-11-13 11:30:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(303, 1103, 3, 'Fascinating exploration of human history.', 5, TO_TIMESTAMP('2022-11-14 12:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(304, 1104, 4, 'Beautifully written with a gripping plot.', 4, TO_TIMESTAMP('2022-11-15 14:00:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(305, 1105, 5, 'Insightful and practical guide to habits.', 5, TO_TIMESTAMP('2023-11-16 15:15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(306, 1106, 6, 'Magical and enchanting journey for all ages.', 5, TO_TIMESTAMP('2021-10-07 16:30:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(307, 1107, 7, 'Classic coming-of-age story. Loved it!', 4, TO_TIMESTAMP('2021-04-04 17:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(308, 1108, 8, 'Transformative insights into habits and change.', 5, TO_TIMESTAMP('2022-04-04 19:00:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(309, 1109, 9, 'Epic fantasy adventure. Highly recommended.', 4, TO_TIMESTAMP('2019-03-05 20:15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Review_Information VALUES(310, 1110, 10, 'A deep dive into human decision-making.', 5, TO_TIMESTAMP('2017-02-02 21:30:45', 'YYYY-MM-DD HH24:MI:SS'));

-- Return Information--
INSERT INTO Return_Information VALUES(5, 15, 5, 1109, 'Book never arrived', 1, TO_TIMESTAMP('2022-11-24 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Processed', '21.99');