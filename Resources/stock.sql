Drop DATABASE stocks_db;
-- Create and use customer_db
CREATE DATABASE stocks_db;
USE stocks_db;

-- Create tables for raw data to be loaded into
CREATE TABLE company_inform (
  Symbol varchar(10) PRIMARY KEY,
  Company_Name varchar(10000),
  MarketCap Float,
  IPOyear integer,
  Sector varchar(10000),
  Industry varchar(10000)
);

CREATE TABLE trading_data (
  Trading_Date date,
  Open_Price float,
  Higest_Price float,
  Lowest_Price float,
  Close_Price float,
  Trading_Volume float,
  Ticker varchar(10),
  ID varchar(20) Primary Key
);

select * 
from company_inform
left join trading_data on company_inform.Symbol = trading_data.Ticker
where trading_data.ID = "GOOG2015-01-20"

