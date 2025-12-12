-- North Pole Network Most Active Users
-- The North Pole Network wants to see who's the most active in the holiday chat each day. 
-- Write a query to count how many messages each user sent, then find the most active user(s) each day. If multiple users tie for first place, return all of them.

SELECT u.user_name,DATE(m.sent_at) AS day,COUNT(*) AS message_count
FROM npn_messages m JOIN npn_users u ON u.user_id = m.sender_id
GROUP BY u.user_name, DATE(m.sent_at) HAVING COUNT(*) = (
SELECT COUNT(*) FROM npn_messages m2 WHERE DATE(m2.sent_at) = DATE(m.sent_at)
GROUP BY m2.sender_id ORDER BY COUNT(*) DESC LIMIT 1);
