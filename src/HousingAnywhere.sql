/*
--------------------------------------------------------------------
In this step, I will create a new database and connect to it
--------------------------------------------------------------------
*/
create database housinganywhere;
go
use housinganywhere
go
/*
--------------------------------------------------------------------
In this step, I will create a new table for storing clean data
--------------------------------------------------------------------
*/
CREATE TABLE ha_clean_data (
    id INT IDENTITY(1,1) PRIMARY KEY not null,
    city NVARCHAR(100) not null,
    category NVARCHAR(100) not null,
    country_code NVARCHAR(10),
	created_at DATETIME,
    price DECIMAL(10, 2),
	furnished BIT,
    total_size FLOAT,
    registration_possible BIT,
    washing_machine BIT,
    tv BIT,
    balcony NVARCHAR(100),
    garden NVARCHAR(100),
    terrace NVARCHAR(100)
);

/*
--------------------------------------------------------------------
In this step, I will removes all rows from the table
--------------------------------------------------------------------
*/

truncate table ha_clean_data;
go

/*
--------------------------------------------------------------------
In this step, I will clean the raw data and inserte it to new table
The problem that I identified:
1. Some data tayps are not correct. Such as created_at, total_size, tv, ...
2. Some values in columns are empty or "". 
3. Some Price are not reasonable.
5. Some values in Total_sized are negative.
6. All values in Total_sized is number but saved as string.
7. One values in Total_sized is "100 over  + 35 down"
--------------------------------------------------------------------
*/

INSERT INTO ha_clean_data (
    city, category, country_code, created_at, price, 
    furnished, total_size, registration_possible,
    washing_machine, tv, balcony, garden, terrace
)
SELECT
	-- Clean city, category, country_code: remove trailling and leading space and returns NULL if the cleaned value is Blank
    NULLIF(LTRIM(RTRIM(city)), '') AS city,
    NULLIF(LTRIM(RTRIM(category)), '') AS category,
    NULLIF(LTRIM(RTRIM(country_code)), '') AS country_code,
	
	-- Clean created_at: convert the value in created_at to DATETIME format
	TRY_CAST(created_at AS DATETIME) AS created_at,

    -- Clean price: remove unreasonable values
    CASE
        WHEN TRY_CAST(price AS DECIMAL(10,2)) >= 10 --BETWEEN 50 AND 10000
        THEN TRY_CAST(price AS DECIMAL(10,2))
        ELSE NULL END AS price,

	-- Convert yes/no to 1/0; leave blank as NULL
    CASE 
		WHEN furnished = '"yes"' THEN 1
		WHEN furnished = '"no"' THEN 0
        ELSE NULL END AS furnished,

	 -- Clean total_size: remove negatives, convert to number
    CASE 
		WHEN ISNUMERIC(REPLACE(total_size, '"', '')) = 1 AND TRY_CAST(REPLACE(total_size, '"', '') AS FLOAT) > 0 
		THEN TRY_CAST(REPLACE(total_size, '"', '') AS FLOAT)
		ELSE NULL END AS total_size,

    -- Convert yes/no to 1/0; leave blank as NULL
    CASE 
		WHEN registration_possible = '"yes"' THEN 1
		WHEN registration_possible = '"no"' THEN 0
        ELSE NULL END AS registration_possible,

    CASE 
		WHEN washing_machine = '"yes"' THEN 1
		WHEN washing_machine = '"no"' THEN 0
        ELSE NULL END AS washing_machine,
	
    CASE 
		WHEN tv = '"yes"' THEN 1
		WHEN tv = '"no"' THEN 0
        ELSE NULL END AS tv,

	-- Clean balcony, garden, terrace: remove trailling and leading space and returns NULL if the cleaned value is Blank
	CASE
		WHEN balcony = '""' THEN NULL
		WHEN balcony = '' THEN NULL
		WHEN balcony = 'null' THEN NULL
		WHEN balcony ='"shared"' THEN 'shared'
		WHEN balcony ='"private"' THEN 'private'
		WHEN balcony ='"no"' THEN 'no'
		ELSE NUll END AS balcony,

	CASE
		WHEN garden = '""' THEN NULL
		WHEN garden = '' THEN NULL
		WHEN garden = 'null' THEN NULL
		WHEN garden ='"shared"' THEN 'shared'
		WHEN garden ='"private"' THEN 'private'
		WHEN garden ='"no"' THEN 'no'
		ELSE NUll END AS garden,

	CASE
		WHEN terrace = '""' THEN NULL
		WHEN terrace = '' THEN NULL
		WHEN terrace = 'null' THEN NULL
		WHEN terrace ='"shared"' THEN 'shared'
		WHEN terrace ='"private"' THEN 'private'
		WHEN terrace ='"no"' THEN 'no'
		ELSE NUll END AS terrace

FROM ha_raw_data
WHERE
    city IS NOT NULL AND
    category IS NOT NULL;

/*
--------------------------------------------------------------------
In this step, I will test the cleaned data
--------------------------------------------------------------------
*/
SELECT * FROM ha_clean_data;
SELECT DISTINCT(city)FROM ha_clean_data;
SELECT DISTINCT(category)FROM ha_clean_data;
SELECT DISTINCT(country_code)FROM ha_clean_data;
SELECT DISTINCT(price)FROM ha_clean_data ORDER BY price;
SELECT DISTINCT(furnished)FROM ha_clean_data;
SELECT DISTINCT(total_size)FROM ha_clean_data ORDER BY total_size;
SELECT DISTINCT(registration_possible)FROM ha_clean_data;
SELECT DISTINCT(washing_machine)FROM ha_clean_data;
SELECT DISTINCT(tv)FROM ha_clean_data;
SELECT DISTINCT(balcony)FROM ha_clean_data;
SELECT DISTINCT(garden)FROM ha_clean_data;
SELECT DISTINCT(terrace)FROM ha_clean_data;

/*
--------------------------------------------------------------------
In this step, I will create a view for task 2/ Part I
--------------------------------------------------------------------
*/

CREATE VIEW vw_median_price_trend AS
SELECT
    FORMAT(created_at, 'yyyy-MM') AS month,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) 
        OVER (PARTITION BY FORMAT(created_at, 'yyyy-MM')) AS median_price
FROM ha_clean_data


/*
--------------------------------------------------------------------
In this step, I will create a view for task 2/ Part II
--------------------------------------------------------------------
*/

CREATE VIEW vw_city_distribution AS
SELECT
    city,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(total_size), 2) AS avg_size
FROM ha_clean_data
GROUP BY city;

/*
--------------------------------------------------------------------
In this step, I will create a view for task 2/ Part III
--------------------------------------------------------------------
*/

CREATE VIEW vw_amenities_vs_price AS
SELECT
    furnished,
    balcony,
    garden,
    terrace,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM ha_clean_data
GROUP BY furnished, balcony, garden, terrace;
