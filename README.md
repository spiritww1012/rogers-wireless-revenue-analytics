# Rogers Wireless Revenue Analytics

### From Data to Decision | Telecom Revenue & Financial Performance Analysis

**Excel | SQLite SQL | Python (Pandas) | Tableau | Business Analytics**

An independent, end-to-end data analytics case study examining Rogers Communications' wireless performance against Canadian industry benchmarks published by the Canadian Radio-television and Telecommunications Commission (CRTC).

**[View the Interactive Case Study on Kaggle](https://www.kaggle.com/code/weiwu1012/rogers-wireless-data-analytics-portfolio-showcas)**

---

## 1. Business Problem

**Why did Rogers' wireless service revenue growth slow despite continued subscriber growth?**

Subscriber growth does not necessarily translate into proportional revenue growth. Changes in average revenue per user (ARPU) can offset the financial benefits of customer acquisition.

This project investigates the relationship between wireless subscribers, ARPU, and service revenue to better understand Rogers' performance relative to the Canadian wireless industry.

## 2. Project Objectives

- Benchmark Rogers' quarterly revenue, subscriber, and ARPU growth against CRTC industry trends.
- Identify major changes and turning points in wireless performance.
- Quantify the modeled contributions of subscriber growth and ARPU changes to service revenue performance.
- Communicate findings through Python visualizations and Tableau dashboards.
- Recommend areas for further business investigation.

## 3. Tools & Technologies

| Tool | Application |
|---|---|
| Microsoft Excel | Data extraction, initial cleaning, and standardization |
| SQLite SQL | Data filtering, aggregation, and quarterly KPI preparation |
| Python (Pandas) | Data validation, KPI analysis, and revenue decomposition |
| Matplotlib | Trend analysis and financial visualizations |
| Tableau | Industry benchmarking and revenue driver dashboards |
| Kaggle | Executable analysis notebook and public portfolio showcase |

## 4. Data Sources & Coverage

**Primary data sources:**

- [Rogers Communications — Financial Information](https://about.rogers.com/investor-relations/financial-information/)
- [CRTC — Communications Market Reports Open Data](https://crtc.gc.ca/eng/publications/reports/PolicyMonitoring/cmrd.htm)
- [CRTC — Mobile Trends Dashboard](https://crtc.gc.ca/eng/publications/reports/PolicyMonitoring/mob.htm)

**Data coverage:**

- Consolidated quarterly analysis: 2021 Q1–2026 Q3 (23 quarters).
- CRTC industry data: 2021 Q1–2026 Q1 (21 quarters).
- Comparable year-over-year trend analysis: 2022 Q1–2026 Q1, where valid observations are available.
- Financial amounts are reported in CAD millions unless otherwise indicated.

Rogers and CRTC indicators differ in reporting scope and definitions. Industry benchmarking is therefore used to compare directional trends, not to calculate market share.

## 5. Analytics Workflow

This project follows the six-stage data analytics framework:

**ASK → PREPARE → PROCESS → ANALYZE → SHARE → ACT**

**ASK:** Define the business problem and analytical objectives.

**PREPARE:** Collect official financial and regulatory data, review source quality, and document reporting differences.

**PROCESS:** Clean and standardize data using Excel and SQL, validate quarterly records, and prepare analysis-ready datasets.

**ANALYZE:** Calculate and compare growth indicators, investigate ARPU trends, and develop a revenue driver bridge.

**SHARE:** Communicate results through Python charts, Tableau dashboards, and an executive summary.

**ACT:** Identify potential business investigation priorities based on the evidence and limitations.

## 6. Key Findings

### Finding 1 — Wireless Revenue Growth Slowed

Both Rogers and the broader Canadian wireless industry experienced slower revenue growth over the analysis period.

### Finding 2 — Subscriber Growth Remained Positive

Rogers continued expanding its wireless subscriber base throughout 2025, but this growth did not produce proportional service revenue increases.

### Finding 3 — Declining ARPU Offset Subscriber Growth

Rogers' ARPU experienced negative year-over-year growth throughout 2025, reducing the modeled financial benefit of subscriber expansion.

### Finding 4 — Revenue Bridge Quantifies the Effects

The 2025 Q3 service revenue bridge illustrates the relationship:

| Revenue Driver | Contribution (CAD M) |
|---|---:|
| Subscriber effect | +52.91 |
| ARPU effect | −67.39 |
| Residual reconciliation effect | +7.48 |
| **Actual service revenue change** | **−7.00** |

The revenue bridge reconciles modeled contributions with the reported year-over-year change.

The residual is a reconciliation adjustment, not an independently verified operational cause.

## 7. Business Recommendations

The findings suggest three priorities for further investigation:

1. **Pricing and plan optimization:** Examine whether plan structures and customer mix are influencing revenue per subscriber.
2. **Discount efficiency and revenue assurance:** Investigate the effects of promotions, discounts, and billing adjustments on revenue performance.
3. **Customer value development:** Evaluate opportunities to improve service monetization while monitoring subscriber retention and experience.

These are proposed investigation areas, not confirmed explanations for ARPU decline. Further analysis would require internal customer, pricing, billing, and plan-level data.

## 8. Visualizations & Portfolio

The completed analysis includes:

- Rogers vs. CRTC wireless revenue growth trends.
- Rogers vs. CRTC subscriber growth trends.
- Rogers vs. CRTC ARPU growth trends.
- A 2025 service revenue driver bridge.
- Two Tableau dashboards covering industry benchmarking and revenue drivers.

**[Explore the Full Kaggle Portfolio Showcase](https://www.kaggle.com/code/weiwu1012/rogers-wireless-data-analytics-portfolio-showcas)**

## 9. Limitations & Reproducibility

This analysis is based on publicly available company and regulatory information.

The prepared input datasets remain private while their redistribution conditions are reviewed. The Kaggle portfolio provides saved analysis outputs and visualizations; reproducing the entire workflow requires obtaining and preparing the relevant source data.

The analysis does not establish specific operational causes of ARPU changes, and the revenue decomposition should not be interpreted as a causal model.

## 10. Attribution & Disclaimer

This is an independent portfolio project and is not affiliated with, sponsored by, or endorsed by Rogers Communications or the CRTC.

All underlying third-party information remains attributable to its respective source. Public availability does not imply unrestricted rights to redistribute or relicense third-party materials.# rogers-wireless-revenue-analytics
Independent telecom revenue analytics case study using Excel, SQL, Python and Tableau to benchmark Rogers Wireless against Canadian industry trends.
