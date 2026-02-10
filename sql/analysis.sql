/* =====================================================
   Sex Ratio & Literacy Relationship Analysis (SQL)
   Census-style Demographic Dataset (India)
   ===================================================== */


/* =====================================================
   SECTION 1: Overall Gender Composition
   Purpose: Understand aggregate male vs female totals
   ===================================================== */

SELECT
    SUM(CAST(REPLACE(males, ',', '') AS UNSIGNED)) AS total_males,
    SUM(CAST(REPLACE(females, ',', '') AS UNSIGNED)) AS total_females
FROM population_stats;



/* =====================================================
   SECTION 2: Sex Ratio by State (Recalculated)
   ===================================================== */

SELECT
    s.state,
    ROUND(
        (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(p.males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
ORDER BY sex_ratio DESC;


/* =====================================================
   SECTION 3: Top 5 and Bottom 5 States by Sex Ratio
   ===================================================== */

-- Top 5
SELECT
    s.state,
    ROUND(
        (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(p.males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
ORDER BY sex_ratio DESC
LIMIT 5;

-- Bottom 5
SELECT
    s.state,
    ROUND(
        (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(p.males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
ORDER BY sex_ratio ASC
LIMIT 5;



/* =====================================================
   SECTION 4: Literacy Rate vs Sex Ratio
   ===================================================== */

SELECT
    s.state,
    s.literacy_rate,
    ROUND(
        (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(p.males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
ORDER BY s.literacy_rate DESC;



/* =====================================================
   SECTION 5: Literacy Category Classification
   ===================================================== */

SELECT
    s.state,
    s.literacy_rate,
    CASE
        WHEN s.literacy_rate > 85 THEN 'High Literacy'
        WHEN s.literacy_rate BETWEEN 70 AND 85 THEN 'Medium Literacy'
        ELSE 'Low Literacy'
    END AS literacy_category
FROM states_info s;



/* =====================================================
   SECTION 6: Average Sex Ratio by Literacy Category
   ===================================================== */

SELECT
    CASE
        WHEN s.literacy_rate > 85 THEN 'High Literacy'
        WHEN s.literacy_rate BETWEEN 70 AND 85 THEN 'Medium Literacy'
        ELSE 'Low Literacy'
    END AS literacy_category,
    ROUND(
        SUM(CAST(REPLACE(p.females, ',', '') AS UNSIGNED)) * 1000.0 /
        SUM(CAST(REPLACE(p.males, ',', '') AS UNSIGNED)),
        0
    ) AS average_sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
GROUP BY literacy_category
ORDER BY average_sex_ratio DESC;



/* =====================================================
   SECTION 7: Female Majority States
   ===================================================== */

SELECT
    s.state,
    ROUND(
        (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(p.males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM states_info s
JOIN population_stats p
    ON s.state = p.state
WHERE
    (CAST(REPLACE(p.females, ',', '') AS UNSIGNED) * 1000.0) /
    CAST(REPLACE(p.males, ',', '') AS UNSIGNED) > 1000
ORDER BY sex_ratio DESC;

