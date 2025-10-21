/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/
IF OBJECT_ID ('silver.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info(
	cst_id				INT,
	cst_key				Nvarchar(50),
	cst_firstname		Nvarchar(50),
	cst_lastname		Nvarchar(50),
	cst_material_status Nvarchar(50),
	cst_gndr			Nvarchar(50),
	cst_create_date		DATE,
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('silver.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_prd_info;
CREATE TABLE silver.crm_prd_info (
	prd_id			INT,
	prd_key			Nvarchar(50),
	prd_nm			Nvarchar(50),
	prd_cost		INT,
	prd_line		Nvarchar(50),
	prd_start_dt	DATE,
	prd_end_dt		DATE,
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('silver.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details (
	sls_ord_num  Nvarchar(50),
	sls_prd_key  Nvarchar(50),
	sls_cust_id  INT,
	sls_order_dt INT,
	sls_ship_dt  INT,
	sls_due_dt   INT,
	sls_sales    INT,
	sls_quantity INT,
	sls_price	 INT,
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID ('silver.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101 (
	cid Nvarchar(50),
	cntry Nvarchar(50),
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('silver.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12 (
	cid		Nvarchar(50),
	bdate	DATE,
	gen		Nvarchar(50),
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('silver.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE silver.erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2(

	id			Nvarchar(50),
	cat			Nvarchar(50),
	subcat		Nvarchar(50),
	maintenance Nvarchar(50),
	dwh_create_date		DATETIME2 DEFAULT GETDATE()
);
