INSERT INTO Customers VALUES
(1, 'Amit Sharma', 'amit@gmail.com', 'Delhi', '2023-06-10'),
(2, 'Priya Verma', 'priya@gmail.com', 'Mumbai', '2023-07-05'),
(3, 'Rahul Singh', 'rahul@gmail.com', 'Bangalore', '2023-09-15'),
(4, 'Sneha Patel', 'sneha@gmail.com', 'Chennai', '2023-10-01');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000, 20),
(102, 'Headphones', 'Electronics', 1500, 50),
(103, 'Keyboard', 'Accessories', 1200, 40),
(104, 'Mouse', 'Accessories', 800, 60),
(105, 'Mobile Phone', 'Electronics', 25000, 25);

INSERT INTO Orders VALUES
(1, 1, '2024-01-10', 56500),
(2, 2, '2024-01-12', 26500),
(3, 3, '2024-01-13', 1700),
(4, 1, '2024-02-05', 25800);

INSERT INTO OrderDetails VALUES
(1, 1, 101, 1, 55000),
(2, 1, 102, 1, 1500),
(3, 2, 105, 1, 25000),
(4, 2, 104, 2, 1600),
(5, 3, 103, 1, 1200),
(6, 3, 104, 1, 500),
(7, 4, 105, 1, 25000),
(8, 4, 102, 1, 1500),
(9, 4, 103, 1, 1200);

INSERT INTO Payments VALUES
(1, 1, '2024-01-10', 56500, 'Credit Card'),
(2, 2, '2024-01-12', 26500, 'UPI'),
(3, 3, '2024-01-13', 1700, 'Cash'),
(4, 4, '2024-02-05', 25800, 'Net Banking');
