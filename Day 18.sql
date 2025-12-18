-- 12 Days of Data - Progress Tracking
-- Over the 12 days of her data challenge, Data Dawn tracked her daily quiz scores across different subjects. 
-- Can you find each subject's first and last recorded score to see how much she improved?

SELECT subject,
(SELECT score FROM daily_quiz_scores d2 WHERE d2.subject = d1.subject ORDER BY quiz_date ASC LIMIT 1) AS first_score,
(SELECT score FROM daily_quiz_scores d3 WHERE d3.subject = d1.subject ORDER BY quiz_date DESC LIMIT 1) AS last_score
FROM daily_quiz_scores d1 GROUP BY subject;
