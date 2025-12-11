-- Cookie Factory Oven Efficiency
-- In the holiday cookie factory, workers are measuring how efficient each oven is. Can you find the average baking time per oven rounded to one decimal place?

SELECT oven_id, ROUND(AVG(baking_time_minutes), 1) FROM cookie_batches GROUP BY oven_id;
