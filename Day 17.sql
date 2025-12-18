-- Evening Task Categories
-- During a quiet evening of reflection, Cindy Lou wants to categorize her tasks based on how peaceful they are. 
-- Can you write a query that adds a new column classifying each task as 'Calm' if its noise_level is below 50, and 'Chaotic' otherwise?

SELECT *,
CASE
  WHEN noise_level < 50 THEN 'Calm'
  ELSE 'Chaotic'
END AS task_category FROM evening_tasks;
