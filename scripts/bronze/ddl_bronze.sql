CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN 

    
    PRINT '====================================';
    PRINT 'LOADING BRONZE LAYER';
    PRINT '====================================';

    PRINT '------------------------------------';


    PRINT '>> TRUNCATING TABLE:bronze.crm_cust_info';
TRUNCATE TABLE bronze.crm_cust_info;
    PRINT '>> INSERTING DATA INTO:bronze.crm_cust_info';
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

     PRINT '>> TRUNCATING TABLE :bronze.crm_prd_info';
TRUNCATE TABLE bronze.crm_prd_info;

    PRINT '>> INSERTING DATA INTO :bronze.crm_prd_info';
     
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);


     PRINT '>> TRUNCATING TABLE :bronze.crm_sales_details';

TRUNCATE TABLE bronze.crm_sales_details;

    PRINT '>> INSERTING DATA INTO :bronze.crm_sales_details';

BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);


    PRINT '------------------------------------';


     PRINT '>> TRUNCATING TABLE :bronze.erp_CUST_AZ12';

TRUNCATE TABLE bronze.erp_CUST_AZ12;

    PRINT '>> INSERTING DATA INTO :bronze.erp_CUST_AZ12';

BULK INSERT bronze.erp_CUST_AZ12
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);


     PRINT '>> TRUNCATING TABLE :bronze.erp_LOC_A101';

TRUNCATE TABLE bronze.erp_LOC_A101;

    PRINT '>> INSERTING DATA INTO :bronze.erp_LOC_A101';

BULK INSERT bronze.erp_LOC_A101
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

     PRINT '>> TRUNCATING TABLE :bronze.erp_PX_CAT_G1V2';


TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;

    PRINT '>> INSERTING DATA INTO :bronze.erp_PX_CAT_G1V2';

BULK INSERT bronze.erp_PX_CAT_G1V2
FROM 'C:\Users\nihar\OneDrive\Desktop\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erpPX_CAT_G1V2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
END
