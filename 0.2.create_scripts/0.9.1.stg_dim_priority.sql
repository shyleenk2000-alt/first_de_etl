USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_priority', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_priority
    (
        PriorityID INT IDENTITY(1,1) PRIMARY KEY,
        Priority VARCHAR(50)
    );
END;
GO
INSERT INTO stg_pc_sales.dbo.dim_priority
(
    Priority
)
SELECT DISTINCT
    Priority
FROM stg_pc_sales.dbo.raw_pc_data