CREATE TABLE IF NOT EXISTS customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  age INT,
  birth_date DATE,
  address VARCHAR(255)
);

SELECT * FROM customers c;

DELETE FROM customers;

ALTER TABLE test.customers 
AUTO_INCREMENT=1;

INSERT INTO customers (name, email)
VALUES
('qwe', 'qwe@mail.com'),
('asd', 'asd@mail.com'),
('zxc', 'zxc@mail.com');

UPDATE customers SET name = 'qwe' WHERE email = 'qwe@mail.com';

DELETE FROM customers WHERE id = 3;


-- customers table migration

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT
);

-- orders table migration

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status ENUM('pending', 'processing', 'shipped', 'delivered', 'canceled') DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Create the table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

-- customers table

INSERT INTO customers (name, email, phone, address) VALUES
    ('Alice Wonderland', 'alice@wonderland.com', '555-1111', '100 Rabbit Hole Lane'),
    ('Bob Builder', 'bob@builder.com', '555-2222', '200 Construction Drive'),
    ('Charlie Chaplin', 'charlie@comedy.com', '555-3333', '300 Stage Street'),
    ('David Copperfield', 'david@magic.com', '555-4444', '400 Illusion Avenue'),
    ('Emily Dickinson', 'emily@poetry.com', '555-5555', '500 Verse Lane'),
    ('Frankenstein', 'frank@monster.com', '555-6666', '600 Castle Drive'),
    ('George Washington', 'george@president.com', '555-7777', '700 White House Road'),
    ('Helen Keller', 'helen@inspiration.com', '555-8888', '800 Hope Street'),
    ('Isaac Newton', 'isaac@physics.com', '555-9999', '900 Gravity Lane'),
    ('Jane Austen', 'jane@literature.com', '555-0000', '1000 Pride & Prejudice Place'),
    ('Karenina Anna', 'karenina@love.com', '555-1111', '1100 Tolstoy Street'),
    ('Leonardo Da Vinci', 'leonardo@art.com', '555-2222', '1200 Renaissance Road'),
    ('Marie Curie', 'marie@science.com', '555-3333', '1300 Radium Avenue'),
    ('Napoleon Bonaparte', 'napoleon@empire.com', '555-4444', '1400 Conquest Court'),
    ('Oliver Twist', 'oliver@orphanage.com', '555-5555', '1500 Workhouse Way'),
    ('Peter Pan', 'peter@neverland.com', '555-6666', '1600 Pixie Dust Lane'),
    ('Queen Elizabeth', 'queen@palace.com', '555-7777', '1700 Buckingham Road'),
    ('Robin Hood', 'robin@forest.com', '555-8888', '1800 Sherwood Drive'),
    ('Sherlock Holmes', 'sherlock@221b.com', '555-9999', '1900 Baker Street'),
    ('Thomas Edison', 'thomas@invention.com', '555-0000', '2000 Lightbulb Lane'),
    ('Ursula', 'ursula@sea.com', '555-1111', '2100 Ocean Avenue'),
    ('Victor Frankenstein', 'victor@madness.com', '555-2222', '2200 Laboratory Drive'),
    ('Wendy Darling', 'wendy@dreams.com', '555-3333', '2300 Neverland Way'),
    ('Xavier', 'xavier@school.com', '555-4444', '2400 Academy Road'),
    ('Yggdrasil', 'yggdrasil@mythology.com', '555-5555', '2500 Tree of Life Lane'),
    ('Zeus', 'zeus@olympus.com', '555-6666', '2600 Mount Olympus Road'),
    ('Abraham Lincoln', 'abraham@honesty.com', '555-7777', '2700 Emancipation Avenue'),
    ('Benjamin Franklin', 'benjamin@kite.com', '555-8888', '2800 Electricity Street'),
    ('Charles Darwin', 'charles@evolution.com', '555-9999', '2900 Galapagos Island Lane'),
    ('Donald Duck', 'donald@quack.com', '555-0000', '3000 Duckburg Drive'),
    ('Edgar Allan Poe', 'edgar@mystery.com', '555-1111', '3100 Raven Road'),
    ('Florence Nightingale', 'florence@nursing.com', '555-2222', '3200 Hospital Lane'),
    ('Galileo Galilei', 'galileo@telescope.com', '555-3333', '3300 Space Avenue'),
    ('Harry Potter', 'harry@magic.com', '555-4444', '3400 Hogwarts Express Way'),
    ('Isaac Asimov', 'isaac@robot.com', '555-5555', '3500 Science Fiction Lane'),
    ('Joan of Arc', 'joan@heroine.com', '555-6666', '3600 Battleground Drive'),
    ('King Arthur', 'king@roundtable.com', '555-7777', '3700 Camelot Court'),
    ('Leonardo DiCaprio', 'leonardo@acting.com', '555-8888', '3800 Hollywood Boulevard'),
    ('Marie Antoinette', 'marie@let.com', '555-9999', '3900 Versailles Palace Road'),
    ('Nelson Mandela', 'nelson@freedom.com', '555-0000', '4000 Apartheid Museum Lane'),
    ('Oprah Winfrey', 'oprah@talk.com', '555-1111', '4100 Talk Show Studio Drive'),
    ('Pablo Picasso', 'pablo@cubism.com', '555-2222', '4200 Art Museum Avenue'),
    ('Queen Victoria', 'queen@empire.com', '555-3333', '4300 Buckingham Palace Road'),
    ('Richard Branson', 'richard@space.com', '555-4444', '4400 Virgin Galactic Lane'),
    ('Stephen Hawking', 'stephen@cosmos.com', '555-5555', '4500 Universe Avenue'),
    ('Thomas Jefferson', 'thomas@declaration.com', '555-6666', '4600 Monticello Road'),
    ('Ulysses S. Grant', 'ulysses@general.com', '555-7777', '4700 White House Lane'),
    ('Vincent van Gogh', 'vincent@art.com', '555-8888', '4800 Starry Night Lane'),
    ('William Shakespeare', 'william@literature.com', '555-9999', '4900 Globe Theater Road'),
    ('Xiaolin', 'xiaolin@temple.com', '555-0000', '5000 Shaolin Temple Road'),
    ('Yoda', 'yoda@jedi.com', '555-1111', '5100 Dagobah Swamp'),
    ('Zorro', 'zorro@mask.com', '555-2222', '5200 Nightrider Lane'),
    ('Alan Turing', 'alan@computer.com', '555-3333', '5300 Bletchley Park Road'),
    ('Betty White', 'betty@comedy.com', '555-4444', '5400 Golden Girls Lane'),
    ('Carl Sagan', 'carl@cosmos.com', '555-5555', '5500 Pale Blue Dot Lane'),
    ('Dalai Lama', 'dalai@peace.com', '555-6666', '5600 Potala Palace Road'),
    ('Elvis Presley', 'elvis@rocknroll.com', '555-7777', '5700 Graceland Drive'),
    ('Frida Kahlo', 'frida@art.com', '555-8888', '5800 Casa Azul Lane'),
    ('Grace Kelly', 'grace@monaco.com', '555-9999', '5900 Hollywood Palace Road'),
    ('Helen Mirren', 'helen@actress.com', '555-0000', '6000 Red Carpet Avenue');

-- orders table

INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
    (1, '2024-11-20', 100.00, 'shipped'),
    (2, '2024-11-25', 50.50, 'delivered'),
    (1, '2024-12-01', 150.25, 'processing'),
    (3, '2024-11-21', 75.00, 'shipped'),
    (4, '2024-11-22', 120.00, 'delivered'),
    (5, '2024-11-23', 25.50, 'processing'),
    (6, '2024-11-24', 80.00, 'shipped'),
    (7, '2024-11-25', 105.00, 'delivered'),
    (8, '2024-11-26', 30.00, 'processing'),
    (9, '2024-11-27', 90.00, 'shipped'),
    (10, '2024-11-28', 110.00, 'delivered'),
    (11, '2024-11-29', 45.00, 'processing'),
    (12, '2024-11-30', 70.00, 'shipped'),
    (13, '2024-12-01', 95.00, 'delivered'),
    (14, '2024-12-02', 20.00, 'processing'),
    (15, '2024-12-03', 60.00, 'shipped'),
    (16, '2024-12-04', 85.00, 'delivered'),
    (17, '2024-12-05', 15.00, 'processing'),
    (18, '2024-12-06', 50.00, 'shipped'),
    (19, '2024-12-07', 75.00, 'delivered'),
    (20, '2024-12-08', 10.00, 'processing'),
    (21, '2024-12-09', 40.00, 'shipped'),
    (22, '2024-12-10', 65.00, 'delivered'),
    (23, '2024-12-11', 20.00, 'processing'),
    (24, '2024-12-12', 35.00, 'shipped'),
    (25, '2024-12-13', 55.00, 'delivered'),
    (26, '2024-12-14', 10.00, 'processing'),
    (27, '2024-12-15', 25.00, 'shipped'),
    (28, '2024-12-16', 45.00, 'delivered'),
    (29, '2024-12-17', 15.00, 'processing'),
    (30, '2024-12-18', 20.00, 'shipped'),
    (31, '2024-12-19', 30.00, 'delivered'),
    (32, '2024-12-20', 10.00, 'processing'),
    (33, '2024-12-21', 15.00, 'shipped'),
    (34, '2024-12-22', 25.00, 'delivered'),
    (35, '2024-12-23', 10.00, 'processing'),
    (36, '2024-12-24', 15.00, 'shipped'),
    (37, '2024-12-25', 20.00, 'delivered'),
    (38, '2024-12-26', 10.00, 'processing'),
    (39, '2024-12-27', 15.00, 'shipped'),
    (40, '2024-12-28', 25.00, 'delivered'),
    (41, '2024-12-29', 10.00, 'processing'),
    (42, '2024-12-30', 15.00, 'shipped'),
    (43, '2024-12-31', 20.00, 'delivered'),
    (44, '2025-01-01', 10.00, 'processing'),
    (45, '2025-01-02', 15.00, 'shipped'),
    (46, '2025-01-03', 25.00, 'delivered'),
    (47, '2025-01-04', 10.00, 'processing'),
    (48, '2025-01-05', 15.00, 'shipped'),
    (49, '2025-01-06', 20.00, 'delivered'),
    (50, '2025-01-07', 10.00, 'processing'),
    (51, '2025-01-08', 15.00, 'shipped'),
    (52, '2025-01-09', 25.00, 'delivered'),
    (53, '2025-01-10', 10.00, 'processing'),
    (54, '2025-01-11', 15.00, 'shipped'),
    (55, '2025-01-12', 20.00, 'delivered'),
    (56, '2025-01-13', 10.00, 'processing'),
    (57, '2025-01-14', 15.00, 'shipped'),
    (58, '2025-01-15', 25.00, 'delivered'),
    (59, '2025-01-16', 10.00, 'processing'),
    (60, '2025-01-17', 15.00, 'shipped');

-- Insert sample data
INSERT INTO employees (name, manager_id) VALUES
    ('John Doe', NULL),       -- CEO (no manager)
    ('Jane Smith', 1),        -- Reports to John Doe
    ('David Lee', 1),         -- Reports to John Doe
    ('Alice Brown', 2),       -- Reports to Jane Smith
    ('Bob Jones', 2),        -- Reports to Jane Smith
    ('Charlie Davis', 3),      -- Reports to David Lee
    ('Emily Clark', 4),       -- Reports to Alice Brown 
    ('Frank Miller', 4);       -- Reports to Alice Brown


-- SELECT
-- FROM
-- JOIN
-- WHERE
-- ORDER BY
-- GROUP BY
-- LIMIT & OFFSET

SELECT * FROM customers;


SELECT 
	o.id order_id, c.id customer_id, c.name, c.phone, order_date, total_amount, total_amount/100*12 ppn, 
	total_amount/100*2 discount, total_amount + (total_amount/100*12) - (total_amount/100*2) total, status
FROM orders o
JOIN customers c ON c.id = o.customer_id
WHERE 
	status = 'delivered' 
	AND total_amount > 100
ORDER BY order_date DESC;


SELECT * FROM customers
WHERE name LIKE '%A' OR phone like '%1111';


SELECT 
    customers.name,
    COUNT(orders.id) AS total_orders
FROM 
    customers
JOIN 
    orders ON customers.id = orders.customer_id
GROUP BY 
    customers.name
LIMIT 10 OFFSET 5;


SELECT e.id, e.name, m.name manager, m2.name manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id
LEFT JOIN employees m2 ON m.manager_id = m2.id;


SELECT COUNT(id) FROM employees;

SELECT * FROM orders o
ORDER BY order_date ASC;

SELECT COUNT(id) FROM orders o WHERE order_date >= '2024-12-01' AND order_date <= '2024-12-07';

SELECT COUNT(id) FROM orders o WHERE order_date BETWEEN '2024-12-01' AND '2024-12-07';