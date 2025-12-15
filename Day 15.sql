-- The Grinch's Mischief Tracker
-- The Grinch is tracking his daily mischief scores to see how his behavior changes over time. 
-- Can you find how many points his score increased or decreased each day compared to the previous day?

SELECT g1.log_date, g1.mischief_score, g1.mischief_score - g2.mischief_score 
FROM grinch_mischief_log g1 LEFT JOIN grinch_mischief_log g2 ON g2.log_date = date(g1.log_date, '-1 day') ORDER BY g1.log_date
