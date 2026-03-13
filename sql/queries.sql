sql_queries = """
-- =============================================
-- Credit Card Customer Acquisition Funnel
-- SQL Analysis Queries
-- Author: Shivani Naik
-- Dataset: Bank Marketing Dataset (41,188 records)
-- =============================================

-- Query 1: Overall Funnel Metrics
SELECT 
    COUNT(*) as total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as total_converted,
    ROUND(AVG(CASE WHEN y = 'yes' THEN 1.0 ELSE 0 END) * 100, 2) as conversion_rate,
    SUM(CASE WHEN y = 'no' THEN 1 ELSE 0 END) as not_converted,
    ROUND(AVG(duration), 2) as avg_call_duration_secs
FROM bank_marketing;

-- Query 2: Campaign Performance by Month
SELECT 
    month,
    COUNT(*) as total_contacted,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as converted,
    ROUND(AVG(CASE WHEN y = 'yes' THEN 1.0 ELSE 0 END) * 100, 2) as conversion_rate,
    ROUND(AVG(duration), 2) as avg_call_duration
FROM bank_marketing
GROUP BY month
ORDER BY conversion_rate DESC;

-- Query 3: Call Duration vs Conversion
SELECT 
    CASE 
        WHEN duration < 100 THEN 'Short (< 100s)'
        WHEN duration BETWEEN 100 AND 300 THEN 'Medium (100-300s)'
        WHEN duration BETWEEN 300 AND 600 THEN 'Long (300-600s)'
        ELSE 'Very Long (600s+)'
    END as call_duration_category,
    COUNT(*) as total_calls,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as converted,
    ROUND(AVG(CASE WHEN y = 'yes' THEN 1.0 ELSE 0 END) * 100, 2) as conversion_rate
FROM bank_marketing
GROUP BY call_duration_category
ORDER BY conversion_rate DESC;

-- Query 4: High Value Customer Profiles
SELECT 
    job,
    marital,
    education,
    COUNT(*) as total,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as converted,
    ROUND(AVG(CASE WHEN y = 'yes' THEN 1.0 ELSE 0 END) * 100, 2) as conversion_rate
FROM bank_marketing
WHERE age BETWEEN 25 AND 55
GROUP BY job, marital, education
HAVING total > 50
ORDER BY conversion_rate DESC
LIMIT 10;

-- Query 5: Channel + Job Combinations
SELECT 
    contact,
    job,
    COUNT(*) as total_contacted,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as converted,
    ROUND(AVG(CASE WHEN y = 'yes' THEN 1.0 ELSE 0 END) * 100, 2) as conversion_rate,
    ROUND(AVG(duration), 2) as avg_call_duration
FROM bank_marketing
GROUP BY contact, job
HAVING total_contacted > 100
ORDER BY conversion_rate DESC
LIMIT 10;
"""

# Save to sql folder
with open('sql/queries.sql', 'w') as f:
    f.write(sql_queries)

print("queries.sql saved successfully! ✅")
