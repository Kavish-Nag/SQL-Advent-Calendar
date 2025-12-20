-- Gift Wrap Paper Usage
-- Clara is reviewing holiday orders to uncover hidden patterns — can you return the total amount of wrapping paper used for orders that were both gift-wrapped and successfully delivered?

SELECT SUM(paper_used_meters) FROM holiday_orders WHERE gift_wrap IS TRUE AND delivery_status = 'Delivered';
