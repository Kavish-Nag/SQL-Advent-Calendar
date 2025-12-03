--The Grinch's Best Pranks Per Target
--The Grinch has brainstormed a ton of pranks for Whoville, but he only wants to keep the top prank per target, with the highest evilness score. 
-- Return the most evil prank for each target. If two pranks have the same evilness, the more recently brainstormed wins.

SELECT prank_id, target_name, prank_description, evilness_score, created_at
FROM grinch_prank_ideas
WHERE (target_name, evilness_score, created_at) IN 
(SELECT target_name, MAX(evilness_score) AS max_evil,
MAX(created_at) AS latest_time
FROM grinch_prank_ideas GROUP BY target_name);
