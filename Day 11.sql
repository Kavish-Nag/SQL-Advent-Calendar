-- Winter Market Sweater Search
-- At the winter market, Cindy Lou is browsing the clothing inventory and wants to find all items with "sweater" in their name. But the challenge is the color and item columns have inconsistent capitalization. 
-- Can you write a query to return only the sweater names and their cleaned-up colors.

SELECT item_name UPPER(SUBSTR(color, 1, 1)) || LOWER(SUBSTR(color, 2)) AS cleaned_color
FROM winter_clothing WHERE LOWER(item_name) LIKE '%sweater%';
