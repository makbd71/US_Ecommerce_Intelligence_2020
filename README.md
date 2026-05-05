# US E-Commerce Intelligence Pipeline (2020)

## Project Objective

Analyze U.S. e-commerce data to identify profit drivers, customer behavior, and operational inefficiencies, with the goal of improving profitability and reducing cost.

---

## Business Problem

E-commerce companies often struggle with:

* Low or negative profit margins
* Lack of visibility into regional and segment performance

This project builds a data pipeline and analysis framework to uncover these issues and provide actionable insights.

---

## Tools & Technologies

* Python (Pandas, Matplotlib)
* SQL (for analysis and querying)
* Power BI / Tableau (for visualization)
* GitHub (version control)

---

## Project Structure

* `data/raw` → Original dataset (unchanged)
* `data/cleaned` → Processed dataset after ETL
* `notebooks` → ETL and analysis notebooks
* `dashboard` → BI dashboards
* `reports` → Final business report

---

## Data Pipeline

1. Extract: Load dataset from Kaggle
2. Transform:

   * Clean column names
   * Fix data types
   * Remove duplicates
   * Create business features (profit_margin, discount_category, etc.)
3. Load:

   * Store cleaned dataset for analysis

---

## Key Insights

* High discount levels significantly reduce profit margins
* Certain customer segments consistently generate losses
* Regional differences impact profitability and sales performance
* Some products generate high sales but low or negative profit

---

## Business Impact

* Identifies loss-making transactions
* Helps optimize discount strategy
* Supports data-driven decision making
* Improves operational efficiency

---

## How to Run

1. Open notebook in Google Colab
2. Run ETL pipeline notebook
3. Generate cleaned dataset
4. Use analysis notebook or BI tools for insights

---

## Outputs

* Cleaned dataset (`data/cleaned`)
* Analysis notebook
* Final PDF report
* Dashboard (Power BI / Tableau)

---

## Author

Mohammad Kabir
