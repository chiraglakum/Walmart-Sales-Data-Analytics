# 🛒 Walmart Sales Data Analysis

This project presents a detailed analysis of Walmart's sales data using both **Python (Pandas & Seaborn)** and **SQL queries** to uncover insights across sales trends, customer preferences, payment methods, and performance metrics.

---

## 📊 Dataset

- **Source**: Internal simulated Walmart store data
- **Records**: Daily transactional-level sales data
- **File**: `Walmart.csv` (cleaned to `Walmart_clean_data.csv`)
- **Columns include**:
  - Invoice ID, Branch, City
  - Product Category, Quantity, Unit Price
  - Payment Method, Total, Rating
  - Time, Date, and Customer type

---

## 🔧 Tools & Technologies

- **Python**: Pandas, NumPy, Seaborn, Matplotlib
- **SQL**: MySQL for querying and analysis
- **Jupyter Notebook**
- **Data Cleaning & EDA**
- **SQL Query Optimization**

---

## 🎯 Business Questions Answered

### Python (in `project.ipynb`)
- Cleaned raw data: converted date formats, handled nulls
- Visualized trends using:
  - Count plots for branch-wise sales
  - Time-based (hourly) transaction analysis
  - Category-wise sales and payment breakdown
- Created new features like sales shift (Morning, Afternoon, Evening)

### SQL (in `sql_qurey.sql`)
- ✅ **Q1**: Different payment methods and quantity sold
- ✅ **Q2**: Highest-rated product category in each branch
- ✅ **Q3**: Busiest day (most transactions) for each branch
- ✅ **Q4**: Quantity sold per payment method
- ✅ **Q5**: Average, Min, and Max product ratings per city
- ✅ **Q6**: Total profit by category
- ✅ **Q7**: Most preferred payment method per branch
- ✅ **Q8**: Categorized sale times by shift

---

## 📈 Key Insights

- **Branch B** had the highest number of sales.
- **E-wallet** was the most commonly used payment method.
- **Food & beverages** were the top-rated product category across branches.
- Sales peaked in the **afternoon shift**, especially on **weekends**.
- **Profit margins** were highest in the **Electronic accessories** category.

---

## 📂 Project Structure

```plaintext
Walmart-Sales-Analysis/
├── Walmart.csv
├── Walmart_clean_data.csv
├── project.ipynb           # Python-based data analysis
├── sql_qurey.sql           # SQL-based business analysis
├── README.md
