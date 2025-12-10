-- Ski Resort Snowfall Rankings
-- Buddy is planning a winter getaway and wants to rank ski resorts by annual snowfall. Can you help him bucket these ski resorts into quartiles?

WITH yearly_snow AS (
    SELECT resort_id,resort_name,SUM(snowfall_inches) AS annual_snowfall
    FROM resort_monthly_snowfall GROUP BY resort_id, resort_name)
  
SELECT
    resort_id,resort_name,annual_snowfall,
    NTILE(4) OVER (ORDER BY annual_snowfall DESC) AS snowfall_quartile
FROM yearly_snow ORDER BY annual_snowfall DESC;
