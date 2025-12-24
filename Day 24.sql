-- New Year Goals - User Type Analysis
-- As the New Year begins, the goals tracker team wants to understand how user types differ. How many completed goals does the average user have in each user_type?

SELECT user_type, AVG(completed_count) FROM (SELECT user_id,user_type,COUNT(*) as completed_count
FROM user_goals WHERE goal_status = 'Completed' GROUP BY user_id, user_type) GROUP BY user_type;
