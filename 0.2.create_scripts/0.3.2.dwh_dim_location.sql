USE dwh_pc_sales;
GO

IF OBJECT_ID('dwh_pc_sales.dbo.dwh_dim_location', 'U') IS NULL
BEGIN
    CREATE TABLE dwh_pc_sales.dbo.dwh_dim_location
    (
        LocationKey INT IDENTITY(1,1) NOT NULL,
        Continent NVARCHAR(100) NOT NULL,
        Country_or_State NVARCHAR(100) NOT NULL,
        Province_or_City NVARCHAR(100) NOT NULL,
        CreatedDate DATETIME2 NOT NULL
            CONSTRAINT DF_dim_location_CreatedDate DEFAULT SYSUTCDATETIME(),

        CONSTRAINT PK_dim_location
            PRIMARY KEY CLUSTERED (LocationKey),

        CONSTRAINT UQ_dim_location
            UNIQUE (
                Continent,
                Country_or_State,
                Province_or_City
            )
    );
END;
GO