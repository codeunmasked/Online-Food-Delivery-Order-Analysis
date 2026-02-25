INSERT INTO customers VALUES
(1, 'Amit', 'Hyderabad'),
(2, 'Divya', 'Hyderabad'),
(3, 'Rahul', 'Bangalore'),
(4, 'Sneha', 'Chennai'),
(5, 'Kiran', 'Hyderabad');

INSERT INTO restaurants VALUES
(101, 'Burger Point', 'Hyderabad'),
(102, 'Pizza Hub', 'Bangalore'),
(103, 'Biryani House', 'Hyderabad'),
(104, 'Food Street', 'Chennai');

INSERT INTO orders VALUES
(1001, 1, 101, '2024-01-10', 350),
(1002, 2, 103, '2024-01-11', 450),
(1003, 3, 102, '2024-01-11', 600),
(1004, 4, 104, '2024-01-12', 300),
(1005, 5, 103, '2024-01-12', 500),
(1006, 2, 101, '2024-01-13', 250);

INSERT INTO order_items VALUES
(1, 1001, 'Burger', 200),
(2, 1001, 'Fries', 150),
(3, 1002, 'Chicken Biryani', 450),
(4, 1003, 'Pizza', 600),
(5, 1004, 'Noodles', 300),
(6, 1005, 'Mutton Biryani', 500),
(7, 1006, 'Veg Burger', 250);
