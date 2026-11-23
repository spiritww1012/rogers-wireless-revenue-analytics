-- CRTC Quarterly KPI Aggregation
-- Recovered from the November 2026 case-study analysis record.
-- Validated against the original SQLite database: 21/21 quarterly rows match exactly.
-- CAUTION: Creates CRTC_Quarterly_KPIs. Do not run against a database
-- where this table already exists; use an empty copy or inspect only.

CREATE TABLE CRTC_Quarterly_KPIs AS
WITH Revenue_Data AS (
 SELECT "Date" AS Quarter,
 SUM(CAST("Revenues" AS INTEGER)) AS Total_Revenue,
 SUM(CASE WHEN "Subcategory" = 'Terminal equipment sales and rentals'
 THEN CAST("Revenues" AS INTEGER) ELSE 0 END) AS Equipment_Revenue
 FROM CRTC_Mobile_Cleaned
 WHERE "Metric" = 'Mobile phone'
 AND "Business Market" IN ('Residential', 'Business')
 AND "Revenues" IS NOT NULL
 AND TRIM("Revenues") <> ''
 GROUP BY "Date"
),
Subscriber_Data AS (
 SELECT "Date" AS Quarter,
 SUM(CAST("Subscribers" AS INTEGER)) AS Subscribers
 FROM CRTC_Mobile_Cleaned
 WHERE "Metric" = 'Mobile phone'
 AND "Business Market" IN ('Residential', 'Business')
 AND "Subcategory" IN ('Voice only including SMS/MMS', 'Data only', 'Voice and data')
 AND "Subscribers" IS NOT NULL
 AND TRIM("Subscribers") <> ''
 GROUP BY "Date"
)
SELECT r.Quarter, r.Total_Revenue, r.Equipment_Revenue,
r.Total_Revenue - r.Equipment_Revenue AS Service_Revenue,
s.Subscribers,
ROUND(1.0 * r.Total_Revenue / NULLIF(s.Subscribers * 3, 0), 2) AS ARPU_With_Devices,
ROUND(1.0 * (r.Total_Revenue - r.Equipment_Revenue) / NULLIF(s.Subscribers * 3, 0), 2) AS ARPU_Without_Devices
FROM Revenue_Data r
JOIN Subscriber_Data s ON r.Quarter = s.Quarter
ORDER BY r.Quarter;
