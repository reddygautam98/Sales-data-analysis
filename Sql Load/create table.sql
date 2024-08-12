-- Create the Geo table
CREATE TABLE Geo (
    GeoID VARCHAR(2) PRIMARY KEY,
    GeoName VARCHAR(255),
    Region VARCHAR(255)
);

-- Create the Product table
CREATE TABLE Product (
    PID VARCHAR(10) PRIMARY KEY,
    Product_name VARCHAR(255),  
    Category VARCHAR(50),
    Size VARCHAR(10),
    Cost_per_box DECIMAL(10, 2)
);

-- Create the People table
CREATE TABLE People (
    SPID VARCHAR(4) PRIMARY KEY,
    Salesperson_name VARCHAR(255),  
    Team VARCHAR(255),
    Location VARCHAR(255)
);

-- Create the Sales table
CREATE TABLE Sales (
    SPID VARCHAR(4),
    GeoID VARCHAR(2),
    PID VARCHAR(10),
    SaleDate TIMESTAMP,
    Amount DECIMAL(10, 2),
    Customers INT,
    Box INT,
    PRIMARY KEY (SPID, SaleDate, GeoID, PID),
    FOREIGN KEY (SPID) REFERENCES People(SPID),
    FOREIGN KEY (GeoID) REFERENCES Geo(GeoID),
    FOREIGN KEY (PID) REFERENCES Product(PID)
);

-- Create indexes on foreign key columns for better performance
CREATE INDEX idx_sales_geoid ON Sales (GeoID);
CREATE INDEX idx_sales_pid ON Sales (PID);
CREATE INDEX idx_sales_spid ON Sales (SPID);

-- Set ownership of Geo table
ALTER TABLE Geo OWNER TO postgres;

-- Set ownership of Product table
ALTER TABLE Product OWNER TO postgres;

-- Set ownership of People table
ALTER TABLE People OWNER TO postgres;

-- Set ownership of Sales table
ALTER TABLE Sales OWNER TO postgres;

