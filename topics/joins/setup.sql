-- Sample schema and data for JOIN exercises
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customer_id INT,
    total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE ShippingAddresses (
    id INT PRIMARY KEY,
    customer_id INT,
    address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE Authors (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Books (
    id INT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);

CREATE TABLE Suppliers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    supplier_id INT NULL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(id)
);

INSERT INTO Departments (id, name) VALUES
    (1, 'Marketing'),
    (2, 'IT'),
    (3, 'Sales');

INSERT INTO Employees (id, name, department_id) VALUES
    (1, 'John Doe', 1),
    (2, 'Jane Smith', 2),
    (3, 'Alex Johnson', NULL);

INSERT INTO Customers (id, name) VALUES
    (1, 'John Doe'),
    (2, 'Maria Rossi');

INSERT INTO Orders (id, customer_id, total) VALUES
    (1, 1, 150.00);

INSERT INTO ShippingAddresses (id, customer_id, address) VALUES
    (1, 1, '123 Main St');

INSERT INTO Authors (id, name) VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith');

INSERT INTO Books (id, title, author_id) VALUES
    (1, 'Book 1', 1),
    (2, 'Book 2', 2),
    (3, 'Orphan Book', NULL);

INSERT INTO Suppliers (id, name) VALUES
    (1, 'Supplier 1'),
    (2, 'Supplier 2');

INSERT INTO Products (id, name, supplier_id) VALUES
    (1, 'Product 1', 1),
    (2, 'Product 2', 1);
