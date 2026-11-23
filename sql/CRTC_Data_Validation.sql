SELECT
    COUNT(*) AS Total_Quarters,

    SUM(
        CASE
            WHEN ABS(
                s.Total_Revenue_CAD_Millions * 1000000
                - o.Total_Revenue
            ) > 0.01
            OR ABS(
                s.Equipment_Revenue_CAD_Millions * 1000000
                - o.Equipment_Revenue
            ) > 0.01
            OR ABS(
                s.Service_Revenue_CAD_Millions * 1000000
                - o.Service_Revenue
            ) > 0.01
            OR ABS(
                s.Subscribers_Thousands * 1000
                - o.Subscribers
            ) > 0.01
            THEN 1
            ELSE 0
        END
    ) AS Mismatched_Quarters

FROM CRTC_Quarterly_KPIs o
JOIN CRTC_Quarterly_KPIs_Standardized s
    ON o.Quarter = s.Quarter;
