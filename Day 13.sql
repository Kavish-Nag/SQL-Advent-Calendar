-- Naughty or Nice scores
-- Santa's audit team is reviewing this year's behavior scores to find the extremes — write a query to return the lowest and highest scores recorded on the Naughty or Nice list.

SELECT MIN(behavior_score),MAX(behavior_score) FROM behavior_scores;
