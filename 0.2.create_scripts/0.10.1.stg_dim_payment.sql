USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_payment_method', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_payment_method
    (
        PaymentMethodID INT IDENTITY(1,1) PRIMARY KEY,
        Payment_Method VARCHAR(100)
    );
END;
GO

INSERT INTO stg_pc_sales.dbo.dim_payment_method
(
    Payment_Method
)
SELECT DISTINCT
    Payment_Method
FROM stg_pc_sales.dbo.raw_pc_data
