CREATE TABLE payment (
    customer_id INT,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO payment (customer_id, customer, mode, city) VALUES
    (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
    (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
    (103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
    (104, 'Liam Donovan', 'Netbanking', 'Denver'),
    (105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
    (106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
    (107, 'Ava Patel', 'Debit Card', 'Phoenix'),
    (108, 'Lucas Carter', 'Netbanking', 'Boston'),
    (109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
    (110, 'Jackson Brooks', 'Credit Card', 'Boston');
    
select mode, count(mode) as total_payment
from payment
group by mode
order by total_payment desc;




