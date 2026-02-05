/* =====================================================
   Sex Ratio & Gender Imbalance Analysis
   Census-style demographic data (India)
   ===================================================== */

/* -----------------------------------------------------
   1. Overall Gender Composition
   ----------------------------------------------------- */
SELECT
    SUM(CAST(REPLACE(males, ',', '') AS UNSIGNED)) AS total_males,
    SUM(CAST(REPLACE(females, ',', '') AS UNSIGNED)) AS total_females
FROM population_gender;


/* -----------------------------------------------------
   2. Sex Ratio by State (Recalculated)
   Definition: (Females / Males) * 1000
   ----------------------------------------------------- */
SELECT
    state,
    ROUND(
        (CAST(REPLACE(females, ',', '') AS UNSIGNED) * 1000.0) /
        CAST(REPLACE(males, ',', '') AS UNSIGNED),
        0
    ) AS sex_ratio
FROM population_gender
ORDER BY sex_ratio;
