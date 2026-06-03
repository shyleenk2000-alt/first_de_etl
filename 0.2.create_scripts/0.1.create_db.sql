IF DB_ID('stg_pc_sales') IS NULL
BEGIN
    CREATE DATABASE stg_pc_sales;
END;

IF DB_ID('dwh_pc_sales') IS NULL
BEGIN
    CREATE DATABASE dwh_pc_sales;
END;