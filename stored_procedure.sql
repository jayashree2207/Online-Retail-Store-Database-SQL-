DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN cust_id INT)
BEGIN
    SELECT o.order_id, o.order_date, o.total_amount
    FROM Orders o
    WHERE o.customer_id = cust_id;
END //

DELIMITER ;
