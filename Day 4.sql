-- Energy-Efficient Holiday Decorations
-- Kevin's trying to decorate the house without sending the electricity bill through the roof.
-- Write a query to find the top 5 most energy-efficient decorations (i.e. lowest cost per hour to operate).

SELECT * FROM hall_decorations ORDER by energy_cost_per_hour limit 5;
