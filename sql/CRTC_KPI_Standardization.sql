CREATE VIEW CRTC_Quarterly_KPIs_Standardized AS
SELECT
    Quarter,
    1.0 * Total_Revenue / 1000000
        AS Total_Revenue_CAD_Millions,
    1.0 * Equipment_Revenue / 1000000
        AS Equipment_Revenue_CAD_Millions,
    1.0 * Service_Revenue / 1000000
        AS Service_Revenue_CAD_Millions,
    1.0 * Subscribers / 1000
        AS Subscribers_Thousands,
    ARPU_With_Devices,
    ARPU_Without_Devices
FROM CRTC_Quarterly_KPIs