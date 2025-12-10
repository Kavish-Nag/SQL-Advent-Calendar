-- Snowflake Types Count
-- Frosty wants to know how many unique snowflake types were recorded on the December 24th, 2025 storm. Can you help him?

SELECT COUNT(DISTINCT flake_type) FROM snowfall_log WHERE fall_time = '2025-12-24';
