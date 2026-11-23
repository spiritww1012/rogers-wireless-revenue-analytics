# SQL Data Preparation and Validation

This directory documents the SQLite workflow used in the Rogers Wireless vs. CRTC Data Analytics case study.

## SQL Files

1. `CRTC_Quarterly_KPIs.sql` — Defines the quarterly KPI table structure.
2. `CRTC_KPI_Aggregation_Recovered.sql` — Contains the recovered KPI aggregation logic used to calculate quarterly wireless revenue, subscribers, and ARPU.
3. `CRTC_KPI_Standardization.sql` — Creates a standardized KPI view with revenue in CAD millions and subscribers in thousands.
4. `CRTC_Data_Validation.sql` — Compares original and standardized KPI values after unit conversion.

## Workflow

Cleaned CRTC Mobile Data → Quarterly KPI Aggregation → Unit Standardization → Data Validation → Python Analysis

## Validation Results

- Quarterly records checked: **21**
- Numerical mismatches: **0**

The aggregation query was recovered from earlier project records and checked against the existing KPI results. The original SQLite validation query also returned 21 matching quarters and zero numerical mismatches.

## Reproducibility and Limitations

The aggregation SQL was recovered from project records rather than extracted from the original SQLite query history. Its results were checked against the saved KPI table, but exact text identity with the originally executed statement cannot be independently confirmed.

The SQL scripts depend on source tables in the original SQLite database. The database and underlying third-party datasets are not redistributed in this repository.

The consistency validation checks matched quarterly records and does not independently establish data completeness.
