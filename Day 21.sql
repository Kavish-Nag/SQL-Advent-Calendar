-- Fireside Story Running Total
-- The Snow Queen hosts nightly fireside chats and records how many stories she tells each evening. 
-- Can you calculate the running total of stories she has shared over time, in the order they were told?

SELECT log_date,stories_shared,SUM(stories_shared) OVER (ORDER BY log_date) FROM story_log ORDER BY log_date;
