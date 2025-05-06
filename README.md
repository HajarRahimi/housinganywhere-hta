# HousingAnywhere Home Assignment Task

# Part 1
**Q1.Think of what could be the three most important KPIs for HousingAnywhere. For each metric, answer the following:**
<br>**a.** Why is this metric important?
<br>**b.** How is this metric calculated?

| #                              | KPI                                                           | Why it matters (strategic lens)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | How to calculate it (analytic lens)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------------------ | ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1                              | Gross Booking Value (GBV)                                     | GBV is the primary indicator of how much rental revenue flows through HousingAnywhere. More bookings = higher GBV = stronger platform growth. It reflects tenant demand and platform revenue.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Sum of first-month rent paid through the platform for every confirmed booking in the period.<br>**Example:** If 200 tenants each book a room for €900, your GBV = €180,000.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 2                              | Take Rate                                                     | Take Rate shows what percentage of GBV HousingAnywhere retains as revenue — including service fees, subscription charges, etc. It reflects the efficiency of the platform’s revenue model.<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | `Platform revenue ÷ GBV`<br>Revenue includes service fees from tenants and landlords, featured listings, and processing fees.<br>**Example:** If GBV = €180,000 and HousingAnywhere earns €27,000, then Take Rate = 15%.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 3                              | Tenant Booking Conversion                                     | This KPI shows the out of all the tenants who visit the site, how many actually complete a booking.<br>A low rate means people are interested but not completing the process (maybe UX or trust issues).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | `Confirmed bookings ÷ Unique tenant sessions (or search results views)` <br>**Example:** If 2,000 unique visitors viewed listings and 100 confirmed bookings were made, then Conversion Rate = 5%.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 4                              | Partner (University, Companies, Relocation Agencies) Activation Rate Rate                            | Shows out of all students invited by a partner school, how many actually used the platform and also how deeply a school has adopted the platform after signing.<br>This KPI tells if the partnership is working.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | `Students with at least one booking from a partner university ÷ Students invited via that university link`.<br>**Example:** 1,000 students received the school link, and 300 booked → Activation Rate = 30%.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |



---
 
<br>

**Q2. Choose one of the three metrics from the previous questions (Metric X) to
answer the following:**
<br>**a.** Suppose that there was a drop in Metric X, explain briefly how you would approach the analysis and what your recommendations would be.
<br>**b.** Provide, if applicable, a couple of metrics or dimensions that could be used to understand Metric X better.

📉 **a. I suppose there was a drop in Tenant Booking Conversion Rate**<br>

📊 **How I would approach the analysis:**<br> 

1️⃣ Check where in the funnel the drop happened:<br>
- Are tenants not clicking on listings? (low engagement)<br>
- Are they messaging landlords but not booking? (communication problem)<br>
- Are they sending booking requests but not paying? (payment or trust issue)<br>

2️⃣ Compare drop by segment:<br>
- By geography (e.g., some cities might have low supply)<br>
- By user type (e.g., students vs. professionals)<br>
- By device (maybe mobile UX is worse)<br>

3️⃣ Look at landlord-side behavior:<br>
- Are response times slower?<br>
- Are listing photos/descriptions worse?<br>
- Did many listings go offline?<br>

4️⃣ Check for recent changes:<br>
- Did something change in the payment process or booking flow?<br>
- Was there a bug or drop in site speed?<br>
- Did prices go up?<br>

📈 **My recommendations for increase in Tenant Booking Conversion Rate:**<br> 

1️⃣ Make it easier to find the right place by improving the search filters, adding better photos, and showing only verified listings. Show popular or low-cost homes to catch their eye.<br>

2️⃣ Remind landlords to reply quickly with automatic messages. Show landlord ratings and tenant reviews to help build trust.<br>

3️⃣ Make the payment process easier to follow. Let people know their payment is safe. If you're working in new countries, offer local ways to pay.<br>

**b. Couple of metrics or dimention can be used:**<br>
- Message to Booking Rate: % of conversations that result in bookings.<br>
- Landlord Response Rate: % of messages responded to within 24 hours.<br>
- Time to First Reply: Median time for landlord to answer a tenant.<br>
- Compare data by using different dimentions such as: Country, City, Region, Category (room, studio, apartment), Device Type (desktop vs mobile), Tenant Type (student, professional, expat)<br>

---
<br>

**Q3. Suppose that you are an Analyst at HousingAnywhere, propose three examples of analyses that you would conduct to contribute to the business performance.**<br>

📊 **Analysis 1**<br>
❓Where do we have high tenant demand but not enough listings, and how much revenue are we missing?<br>
Answering to this question is important because we only make money when listings match tenant needs. For answering we can create a heatmap of high-demand, low-supply areas and estimate of missed revenue.<br>

📍How we can analys it:<br>
- We can use search and listing data to measure demand vs. supply by city, category.
- Calculate searches per available day/month.
- Compare listed vs. booked prices to check if pricing is also an issue.<br>

📊 **Analysis 2**<br> 
❓Where do tenants drop off in the booking process, and why?<br>
Answering this question is important because every small improvement in conversion leads to more bookings without extra marketing costs. To answer it, we can look at each step of the booking flow and find what causes users to leave.<br>

📍How we can analyse it:<br>
- We can track the steps from viewing a listing to making a payment.
- Look at factors like photo quality, landlord reply time, or pricing.
- Check how each factor affects drop-off using simple models.
- Test changes like reminders to landlords to see if they help.<br>

📊 **Analysis 3**<br> 
❓Which landlords might leave the platform soon, and how can we keep them?<br>
Answering this question is important because keeping landlords is cheaper than finding new ones, and helps maintain supply. We can predict who is at risk and take action to keep them.<br>

📍How we can analyse it:<br>
- Mark landlords as churned if they have no listings or bookings for 90 days.
- Use data like bookings, response time, disputes, and reviews to predict churn risk.
- Group landlords into low, medium, and high risk.
- Test actions like personal calls or fee waivers to see if they reduce churn.<br>

---
<br>

**Q4. Choose only one of your example analyses and answer the following:**<br>
**a.** What data would you require?<br>
**b.** What is the value for the business in doing this analysis?<br>
**c.** Briefly describe how you would approach this analysis.<br>
**d.** Provide a list of recommendations or outcomes that would come from the analysis.<br>

🌞 I will choose analysis 3: “tenant demand vs. available supply”.<br>
**a. What data would you require?**<br>
🧾 Demand data (from tenant activity logs):<br>
- tenant_id
- session_id
- search date & time
- search filters: country, city, property type, move-in date
- listing views, favorites, messages sent
- tenant type (student/expat)<br>

🧾 Supply data (from listing & booking records):<br>
- listing_id, 
- landlord_id
- property type (Based on the data data that you shared with me we should consider 'category'), 
- room size (Based on the data data that you shared with me we should consider 'total_size'), 
- price
- availability calendar (by day/month)
- booking status (booked / available)
- city
- country<br>

**b. What is the value for the business in doing this analysis?**<br>
🏠 This analysis helps **HousingAnywhere** increase revenue and grow more efficiently by:<br>
- Identifying demand-supply mismatches across cities, property types (categories), and dates—showing where tenants are searching but not finding available listings.<br>
- Helping prioritize landlord acquisition efforts in high-demand, low-supply areas.<br>
- Estimating the Gross Booking Value (GBV) lost due to unavailable listings.<br>
- Forecasting potential additional revenue if supply gaps are closed.<br>
- Improving landlord satisfaction by aligning supply more closely with tenant demand <br>

**c. Briefly describe how you would approach this analysis**<br>
In this analysis, I measure how much tenant demand there is compared to how many listings are available, in different cities, for different property types(category).<br>
I use the following ratio:<br>

`Demand-Supply Ratio = Tenant demand (e.g., searches, favorites, messages) / Listings available`<br>

For example:<br>

| Location | Property Type | Availability  | Searches | Available Listings | Ratio |
|----------|---------------|---------------|----------|--------------------|-------|
| Amsterdam| Apartment     | August        | 500      | 100                | 5.0   |
| Rotterdam| Studio        | November      | 350      | 150                | 2.3   |
| The Haug | Private Room  | June          | 400      | 200                | 2.0   |
| Utrecht  | Shared Room   | September     | 600      | 450                | 1.3   |

<br>Then I will rank cities like this:
| Location | Heat Score | Priority  |
|----------|------------|----------- |
| Amsterdam| 5.0        | 🔴 High   |
| Rotterdam| 2.3        | 🟡 Medium |
| The Haug | 2.0        | 🟡 Medium |
| Utrecht  | 1.3        | 🟢 Low    |
<br>

**d.** Provide a list of recommendations or outcomes that would come from the analysis.<br>

🔴 **Amsterdam – High Priority**<br>

**Insight:** Tenant demand far exceeds supply (5 tenants per listing).<br>

**Recommendations:**<br>
- Launch a targeted landlord acquisition campaign in Amsterdam.
- Offer incentives like free listing boosts or reduced fees for new landlords.
- Encourage current landlords to open more availability or adjust prices.
- Promote Amsterdam listings more heavily on student/university portals.<br>

🟡 **Rotterdam & The Hague – Medium Priority**<br>
**Insight:** Moderate imbalance between tenant demand and supply.<br>

**Recommendations:**<br>
- Monitor closely for upcoming peak seasons (e.g., semester start dates).
- Provide tools or prompts to optimize listing quality (better photos, quicker replies).
- Consider limited-time promos to boost listing visibility.<br>

🟢 **Utrecht – Low Priority**<br>
**Insight:** Supply is currently keeping pace with demand.<br>

**Recommendations:**<br>
- Maintain current marketing spend — no urgent need to acquire new listings.
- Focus on improving tenant experience to increase booking conversion.
- Track to see if demand rises in the future due to academic or relocation trends.<br>

<br>
<br>
<br>
<br>
<br>
<br>

# Part 2

**Task 1**<br> 
Clean the dataset, provide code and explain the steps (Either SQL or any programming language)

**Task 2**<br>
Write SQL queries and create a graphical representation for the following topics and interpret the results:
<br>**a.** Rolling average of median monthly rental price development over time.
<br>**b.** Geographical distribution & defining cities of interest.
<br>**c.** Any other insights that you find valuable to report.

**Task 3**<br>
Choose one of the cities in the data set, and provide a brief analysis of the situation of the city, including possible hypothesis for its performance and recommendations.

## Part 2 (Solution)
### 👣 Step 1: I createed a new database and connect to it
```sql
create database housinganywhere;
go
use housinganywhere
go
```
### 👣 Step 2: I imported the raw data by using wizard into new table in my database

### 👣 Step 3: I createed a new table for storing clean data
```sql
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
```
### 👣 Step 4: I cleaned the raw data and inserteed it to new table for clean data
In the following you can find some of the problem that I identified. I will break down this step to different sections. 

1. Some data tayps are not correct. Such as created_at, total_size, tv, ...
2. Some values in columns are empty or "". 
3. Some Price are not reasonable.
4. Some values in Total_sized are negative.
5. All values in Total_sized is number but saved as string.
6. One values in Total_sized is "100 over  + 35 down"

🧹 For cleaning city, category, country_code, I removed trailling and leading space and set returns NULL if the cleaned value is Blank.
```sql
    NULLIF(LTRIM(RTRIM(city)), '') AS city,
    NULLIF(LTRIM(RTRIM(category)), '') AS category,
    NULLIF(LTRIM(RTRIM(country_code)), '') AS country_code,
```
🧹 I converted the value in created_at to DATETIME format
```sql
    TRY_CAST(created_at AS DATETIME) AS created_at,
```
🧹 I cleaned price column by removing unreasonable values. I also convered the data format to DECIMAL.
```sql
    CASE
        WHEN TRY_CAST(price AS DECIMAL(10,2)) >= 10 --BETWEEN 50 AND 10000
        THEN TRY_CAST(price AS DECIMAL(10,2))
        ELSE NULL END AS price,
```
🧹 I converted yes/no to 1/0 (string to BIT); I also set to leave blank as NULL.
```sql
    CASE 
		WHEN furnished = '"yes"' THEN 1
		WHEN furnished = '"no"' THEN 0
        ELSE NULL END AS furnished,
    
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
```
🧹 I cleaned total_size by removing negatives values and converting format to float.
```sql
    CASE 
		WHEN ISNUMERIC(REPLACE(total_size, '"', '')) = 1 AND TRY_CAST(REPLACE(total_size, '"', '') AS FLOAT) > 0 
		THEN TRY_CAST(REPLACE(total_size, '"', '') AS FLOAT)
		ELSE NULL END AS total_size,
```
🧹  In this step: <br>
- If the value is exactly "" (two double quotes), it is treated as missing and set to NULL.
- If the value is an empty string (''), it is also considered missing and converted to NULL.
- If the value is the string "null" (not SQL NULL), it is also treated as missing.
- For known valid values like "shared", "private", and "no", the query removes the surrounding quotes and standardizes the output.
```sql
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
```

### 👣 Step 5: For answering to the technical task,I created three different views.
```sql
/*
--------------------------------------------------------------------
In this step, I will create a view for task 2/ Part II
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

```

### 👣 Step 6: I connected Looker Studio (a Google Cloud product) to SQL Server and complete Tasks 1, 2, and 3 using that connection.
![Connect to SQL Server](/docs/ConnectToSQLServer.png)
### 👣 Step 6: I created create different graphical representation for the following topics and
- Rolling average of median monthly rental price development over time
- Geographical distribution & defining cities of interest
- Any other insights that you find valuable to report

![Vizualizationa_1](/docs/Visualization_1.png)


