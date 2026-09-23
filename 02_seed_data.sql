USE amazondb;

INSERT INTO Categories (category_id, category_name, description) VALUES
(1, 'Electronics', 'Gadgets, appliances, and high-tech devices.'),
(2, 'Apparel', 'Clothing, shoes, and accessories for all ages.'),
(3, 'Home & Kitchen', 'Cooking tools, home decor, and small appliances.'),
(4, 'Books', 'Physical and digital literature.'),
(5, 'Sports & Outdoors', 'Equipment for sports, camping, and fitness.'),
(6, 'Beauty & Personal Care', 'Cosmetics, skincare, and grooming products.'),
(7, 'Toys & Games', 'Items for children and leisure.'),
(8, 'Automotive', 'Car parts, tools, and maintenance products.'),
(9, 'Jewelry', 'Rings, necklaces, and watches.'),
(10, 'Health & Wellness', 'Vitamins, supplements, and fitness trackers.'),
(11, 'Garden & Patio', 'Outdoor furniture, plants, and tools.'),
(12, 'Pet Supplies', 'Food, toys, and care items for animals.'),
(13, 'Office Supplies', 'Paper, pens, and desk accessories.'),
(14, 'Music & Instruments', 'Guitars, keyboards, and audio equipment.'),
(15, 'Software', 'Operating systems and application programs.');

INSERT INTO Products (product_id, product_name, description, price, stock_quantity, category_id, image_url) VALUES
(101, '4K Smart TV 55"', 'OLED TV with voice assistant.', 799.99, 150, 1, '/images/tv.jpg'),
(102, 'Wireless Noise Cancelling Headphones', 'Over-ear comfort with 30-hour battery life.', 199.50, 250, 1, '/images/headphones.jpg'),
(103, 'Men\'s Denim Jacket', 'Classic fit, 100% cotton.', 59.99, 300, 2, '/images/denimjacket.jpg'),
(104, 'Premium Coffee Maker', '12-cup programmable brewer.', 45.00, 180, 3, '/images/coffeemaker.jpg'),
(105, 'The SQL Guidebook', 'Comprehensive guide to database querying.', 25.95, 400, 4, '/images/sqlbook.jpg'),
(106, 'Yoga Mat Pro', 'Thick, non-slip mat for high-intensity yoga.', 35.00, 220, 5, '/images/yogamat.jpg'),
(107, 'Anti-Aging Serum', 'Contains Vitamin C and Hyaluronic Acid.', 29.99, 175, 6, '/images/serum.jpg'),
(108, 'Wooden Chess Set', 'Hand-carved pieces and folding board.', 49.95, 110, 7, '/images/chess.jpg'),
(109, 'Synthetic Motor Oil 5L', 'Full synthetic oil for modern engines.', 39.99, 90, 8, '/images/motoroil.jpg'),
(110, 'Silver Hoop Earrings', 'Sterling silver, hypoallergenic.', 19.99, 500, 9, '/images/earrings.jpg'),
(111, 'Biotin 10,000mcg', 'Supports hair, skin, and nail health.', 15.50, 350, 10, '/images/biotin.jpg'),
(112, 'Folding Zero Gravity Chair', 'Perfect for patio relaxation.', 75.00, 130, 11, '/images/patiochair.jpg'),
(113, 'Dog Training Treats', 'Small, savory treats for positive reinforcement.', 12.99, 280, 12, '/images/dogtreats.jpg'),
(114, 'A4 Printer Paper Ream', '500 sheets of bright white paper.', 7.50, 600, 13, '/images/paper.jpg'),
(115, 'Acoustic Guitar Starter Pack', 'Includes guitar, case, and tuner.', 149.00, 85, 14, '/images/guitar.jpg');

INSERT INTO Customers (customer_id, first_name, last_name, email, password_hash, phone_number, shipping_address) VALUES
(1, 'Alice', 'Johnson', 'alice.j@example.com', 'hash_a1b2c3d4', '555-0101', '123 Main St, Apt 4B, New York, NY 10001'),
(2, 'Bob', 'Smith', 'bob.s@example.com', 'hash_e5f6g7h8', '555-0102', '45 Pine Ln, Springfield, IL 62704'),
(3, 'Charlie', 'Brown', 'c.brown@example.com', 'hash_i9j0k1l2', '555-0103', '78 Oak Dr, Palo Alto, CA 94301'),
(4, 'Diana', 'Prince', 'diana.p@example.com', 'hash_m3n4o5p6', '555-0104', '90 River Rd, Austin, TX 78701'),
(5, 'Edward', 'Norton', 'edward.n@example.com', 'hash_q7r8s9t0', '555-0105', '11 Bridge Ave, Seattle, WA 98101'),
(6, 'Fiona', 'Galloway', 'fiona.g@example.com', 'hash_u1v2w3x4', '555-0106', '22 Sunset Blvd, Miami, FL 33101'),
(7, 'George', 'Harris', 'george.h@example.com', 'hash_y5z6a7b8', '555-0107', '33 Elm St, Boston, MA 02101'),
(8, 'Hannah', 'Taylor', 'hannah.t@example.com', 'hash_c9d0e1f2', '555-0108', '44 Lakeview Pk, Denver, CO 80201'),
(9, 'Ian', 'Miller', 'ian.m@example.com', 'hash_g3h4i5j6', '555-0109', '55 Hillcrest Way, Portland, OR 97201'),
(10, 'Jasmine', 'Lee', 'jasmine.l@example.com', 'hash_k7l8m9n0', '555-0110', '66 Valley Rd, Atlanta, GA 30301'),
(11, 'Kyle', 'Walker', 'kyle.w@example.com', 'hash_o1p2q3r4', '555-0111', '77 Ocean View, San Diego, CA 92101'),
(12, 'Laura', 'Adams', 'laura.a@example.com', 'hash_s5t6u7v8', '555-0112', '88 Maple Dr, Chicago, IL 60601'),
(13, 'Mark', 'Wilson', 'mark.w@example.com', 'hash_w9x0y1z2', '555-0113', '99 Forest Cir, Dallas, TX 75201'),
(14, 'Nina', 'Cooper', 'nina.c@example.com', 'hash_a2b3c4d5', '555-0114', '10 Willow Ln, Phoenix, AZ 85001'),
(15, 'Oscar', 'Parker', 'oscar.p@example.com', 'hash_e6f7g8h9', '555-0115', '20 Stonegate, Philadelphia, PA 19101');

INSERT INTO Orders (order_id, customer_id, order_date, total_amount, order_status, shipping_address) VALUES
(1001, 1, '2023-10-01 10:30:00', 799.99, 'Delivered', '123 Main St, Apt 4B, New York, NY 10001'), -- Alice bought 101 (TV)
(1002, 2, '2023-10-01 14:45:00', 25.95, 'Delivered', '45 Pine Ln, Springfield, IL 62704'),    -- Bob bought 105 (SQL Book)
(1003, 3, '2023-10-02 09:00:00', 49.95, 'Delivered', '78 Oak Dr, Palo Alto, CA 94301'),    -- Charlie bought 108 (Chess)
(1004, 4, '2023-10-03 11:20:00', 234.50, 'Shipped', '90 River Rd, Austin, TX 78701'),      -- Diana bought 102 (Headphones) + 107 (Serum)
(1005, 5, '2023-10-04 15:55:00', 149.00, 'Shipped', '11 Bridge Ave, Seattle, WA 98101'),   -- Edward bought 115 (Guitar)
(1006, 6, '2023-10-05 18:00:00', 59.99, 'Delivered', '22 Sunset Blvd, Miami, FL 33101'),   -- Fiona bought 103 (Jacket)
(1007, 7, '2023-10-06 08:30:00', 39.99, 'Cancelled', '33 Elm St, Boston, MA 02101'),      -- George bought 109 (Oil)
(1008, 8, '2023-10-07 12:45:00', 19.99, 'Delivered', '44 Lakeview Pk, Denver, CO 80201'),  -- Hannah bought 110 (Earrings)
(1009, 9, '2023-10-08 17:10:00', 75.00, 'Pending', '55 Hillcrest Way, Portland, OR 97201'), -- Ian bought 112 (Chair)
(1010, 10, '2023-10-09 13:30:00', 35.00, 'Shipped', '66 Valley Rd, Atlanta, GA 30301'),    -- Jasmine bought 106 (Yoga Mat)
(1011, 11, '2023-10-10 09:50:00', 15.50, 'Delivered', '77 Ocean View, San Diego, CA 92101'), -- Kyle bought 111 (Biotin)
(1012, 12, '2023-10-11 16:15:00', 45.00, 'Delivered', '88 Maple Dr, Chicago, IL 60601'),   -- Laura bought 104 (Coffee Maker)
(1013, 13, '2023-10-12 10:00:00', 12.99, 'Pending', '99 Forest Cir, Dallas, TX 75201'),    -- Mark bought 113 (Treats)
(1014, 14, '2023-10-13 14:05:00', 7.50, 'Shipped', '10 Willow Ln, Phoenix, AZ 85001'),    -- Nina bought 114 (Paper)
(1015, 15, '2023-10-14 11:30:00', 60.00, 'Delivered', '20 Stonegate, Philadelphia, PA 19101'); -- Oscar bought 104 (Coffee Maker) + 114 (Paper)



INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1001, 101, 1, 799.99),
(2, 1002, 105, 1, 25.95),
(3, 1003, 108, 1, 49.95),
(4, 1004, 102, 1, 199.50), -- Diana's first item
(5, 1004, 107, 1, 35.00),  -- Diana's second item (Total $234.50)
(6, 1005, 115, 1, 149.00),
(7, 1006, 103, 1, 59.99),
(8, 1007, 109, 1, 39.99),
(9, 1008, 110, 1, 19.99),
(10, 1009, 112, 1, 75.00),
(11, 1010, 106, 1, 35.00),
(12, 1011, 111, 1, 15.50),
(13, 1012, 104, 1, 45.00),
(14, 1013, 113, 1, 12.99),
(15, 1014, 114, 1, 7.50),
(16, 1015, 104, 1, 45.00),  -- Oscar's first item
(17, 1015, 114, 2, 7.50);   -- Oscar's second item (Total $45.00 + 2*$7.50 = $60.00)
