/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
Go


if exists (select 1 from sys.databases where name = 'DataWarehouse')
Begin
    Alter Database DataWarehouse SET single_user with ROLLBACK IMMEDIATE;
	DROP Database DataWarehouse;
End;
Go

create DATABASE DataWarehouse;

use DataWarehouse;


create schema bronze;
Go
create schema silver;
Go
create schema gold;

