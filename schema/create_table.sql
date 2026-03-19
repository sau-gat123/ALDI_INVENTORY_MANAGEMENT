
CREATE TABLE Supplier (
    SupplierID  INTEGER PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) UNIQUE,
    Email VARCHAR(255) UNIQUE
);

-- Location
CREATE TABLE Location (
    LocationID  INTEGER PRIMARY KEY,
    LocationName VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Region VARCHAR(100)
);

-- Product
CREATE TABLE Product (
    ProductID INTEGER PRIMARY KEY,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    UnitPrice NUMERIC(10,2) NOT NULL,
    ExpirationDate DATE,
    Category VARCHAR(100),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ========================================
-- CREATE INVENTORY_TRANSACTION TABLE
-- ========================================

CREATE TABLE Inventory_Transaction (
    TransactionID SERIAL PRIMARY KEY,
    TransactionType VARCHAR(50) NOT NULL,         -- IN or OUT
    TransactionDate DATE DEFAULT CURRENT_DATE,    -- Default to today's date
    SupplierID INTEGER REFERENCES Supplier(SupplierID) ON DELETE SET NULL,
    LocationID INTEGER NOT NULL REFERENCES Location(LocationID) ON DELETE CASCADE
);



CREATE TABLE Inventory (
    InventoryID SERIAL PRIMARY KEY,
    ProductID INTEGER NOT NULL REFERENCES Product(ProductID) ON DELETE CASCADE,
    LocationID INTEGER NOT NULL REFERENCES Location(LocationID) ON DELETE CASCADE,
    QuantityOnHand INTEGER NOT NULL DEFAULT 0,
    ReorderLevel INTEGER DEFAULT 10
);



CREATE TABLE Transaction_Detail (
    TID INTEGER PRIMARY KEY,
    TransactionID INTEGER NOT NULL,
    ProductID INTEGER NOT NULL,
    Quantity INTEGER NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (TransactionID) REFERENCES Inventory_Transaction(TransactionID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE
);
