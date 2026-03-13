# 💳 Credit Card Customer Acquisition Funnel Analysis

> Identifying high-value customer segments and optimizing 
> campaign ROI using SQL, Python & Machine Learning

---

## 📌 Project Overview
This project analyzes a commercial card acquisition funnel 
across 41,188 customers to identify high-converting segments, 
optimize campaign outreach strategy, and build a propensity 
model for lead prioritization.

**Domain:** Financial Services | Customer Acquisition Analytics  
**Tools:** Python, SQL, XGBoost, Pandas, Matplotlib, Scikit-learn  
**Dataset:** UCI Bank Marketing Dataset (41,188 records)

---

## 🎯 Key Results

| Metric | Value |
|---|---|
| Overall Baseline Conversion Rate | 11.27% |
| XGBoost Model AUC | 0.95 |
| Model Recall (converters caught) | 94.2% |
| A/B Test Conversion Lift | 3.5x |
| Cost Per Acquisition Reduction | 71.4% |
| Extra Conversions from Model | 652 |
| Very Hot Leads Identified | 1,339 |

---

## 📊 Key Findings

### 1️⃣ Segment Analysis
- Student & Retired segments convert at **31-36%** — 3x above baseline
- Blue-collar consumes **22.47% of outreach** but delivers only **13.75%** of conversions
- Single students are the highest value profile converting at **27-37%**

### 2️⃣ Channel Performance
- Cellular converts at **14.74%** vs Telephone **5.23%** — 3x difference
- 9 out of 10 top channel-job combinations use Cellular

### 3️⃣ Campaign Timing
- March & December achieve **50%+ conversion** with only 1-2% of budget
- May wastes **33% of budget** at only **6.43%** conversion rate

### 4️⃣ Call Duration Impact
- Calls under 100s convert at **0.79%**
- Calls over 600s convert at **48.61%** — 60x difference!

### 5️⃣ A/B Test Simulation
- Random outreach: **261 conversions** (10.56%)
- Model guided: **913 conversions** (36.95%)
- Same budget. Same effort. **3.5x better results!**

---

## 📁 Project Structure

CreditCard-Acquisition-Funnel-Analysis/
│
├── data/
│   └── bank-additional-full.csv     ← raw dataset
│
├── notebooks/
│   ├── outreach_vs_conversion.png   ← segment analysis
│   ├── age_channel_analysis.png     ← age & channel
│   ├── feature_importance.png       ← XGBoost features
│   ├── roc_curve.png                ← model evaluation
│   ├── confusion_matrix.png         ← model performance
│   └── permutation_importance.png   ← feature validation
│
├── sql/
│   └── queries.sql                  ← 5 SQL queries
│
└── 01_EDA_Funnel_Analysis.ipynb     ← main notebook

---

## 🔧 How to Run
```bash
# 1. Clone the repository
git clone https://github.com/shivaniii12/CreditCard-Acquisition-Funnel-Analysis.git

# 2. Install required libraries
pip install pandas numpy matplotlib seaborn scikit-learn xgboost shap

# 3. Open Jupyter Notebook
jupyter notebook 01_EDA_Funnel_Analysis.ipynb

---

## 📚 Dataset
- **Records:** 41,188 customers
- **Features:** 20 input features + 1 target variable
- **Target:** Product subscription (yes/no)
- **Link:** [Bank Marketing Dataset](https://www.kaggle.com/datasets/henriqueyamahata/bank-marketing)

---

## 👩‍💻 Author
**Shivani Naik**  
Data Analyst | Financial Services & Marketing Analytics  
[LinkedIn](https://www.linkedin.com/in/shivani-naik-545566257/) | [GitHub](github.com/Shivaniii12)
