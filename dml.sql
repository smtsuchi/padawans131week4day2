INSERT INTO customer(
    first_name,
    last_name,
    phone_number,
    email,
    age
) VALUES (
    'Shoha',
    'Tsuchida',
    '(888) 888-8888',
    'shohat@codingtemple.com',
    9001
);

SELECT *
FROM customer;

INSERT INTO customer(
    first_name,
    phone_number,
    email,
    prime
) VALUES (
    'Peal',
    '(111) 888-8888',
    'pearl@osborne.com',
    true
), (
    'Dimitri',
    '(222) 222-2222',
    'dimitri@marino.com',
    true
),(
    'Collum',
    '(333) 222-3333',
    'collumn@powers.com',
    false
);


INSERT INTO product(
    product_name,
    price
) VALUES(
    'Giraffe Pillow Pet',
    14.99
),(
    'Penguin Pillow Pet',
    14.99
),(
    'Dog Pillow Pet',
    14.99
),(
    'Snuggies',
    19.99
);

SELECT * FROM product;

INSERT INTO my_transaction(
    customer_id,
    total_price
) VALUES(
    1,
    44.97
),(
    4,
    19.99
),(
    1,
    34.98
);

SELECT *
FROM my_transaction;

INSERT INTO receipt_item(
    transaction_id,
    product_id,
    quantity
)VALUES
(1,1,2),
(1,2,1),
(2,4,1),
(3,4,1),
(3,3,1);


SELECT product_name
FROM product
WHERE product_id IN (
    SELECT product_id
    FROM receipt_item
    WHERE transaction_id IN (
        SELECT transaction_id
        FROM my_transaction
        WHERE customer_id IN (
            SELECT customer_id
            FROM customer
            WHERE first_name='Collum'
        )
    )
);

SELECT * FROM customer;

DELETE FROM customer
WHERE customer_id = 2;

UPDATE customer
SET last_name = 'Powers'
WHERE customer_id = 4;