# SQL Data Preparation and Validation

This directory contains SQL statements recovered from the original SQLite project used in the Rogers Wireless vs. CRTC case study.

## Files

- `CRTC_Quarterly_KPIs.sql` — Defines the quarterly KPI table structure.
- `CRTC_KPI_Standardization.sql` — Creates a standardized KPI view with consistent revenue and subscriber units.
- `CRTC_Data_Validation.sql` — Checks numerical consistency between original and standardized KPI records.

## Validation Results

- Matched quarters: **21**
- Quarters with numerical mismatches: **0**

The validation query checks matching records and does not independently verify completeness of the quarterly dataset.

## Reproducibility

The original KPI aggregation query has not been recovered. The underlying third-party datasets are not redistributed in this repository.
