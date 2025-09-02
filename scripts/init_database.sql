
--create database DataWarehouse

USE master;
GO 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLL_BACK IMMEDIATE;
    DROP DATABASE DataWWarehouse;
END

--create database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
--CREATE SCHEMAS FOR LAYERS
CREATE SCHEMA bronze;
GO

CREATE SCHEMA sliver;
GO

CREATE SCHEMA gold;
GO
