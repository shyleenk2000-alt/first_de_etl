USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_date', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_date
    (
        DateID INT IDENTITY(1,1) PRIMARY KEY,
        Purchase_Date DATE,
        Ship_Date DATE
    );
END;
GO

INSERT INTO stg_pc_sales.dbo.dim_date
(
    Purchase_Date,
    Ship_Date
)
SELECT DISTINCT
    Purchase_Date,
    Ship_Date
FROM stg_pc_sales.dbo.raw_pc_data
