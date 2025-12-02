-- Santa wants to analyze which toys that were produced in his workshop have already been delivered to children. 
--You are given two tables on toy production and toy delivery — can you return the toy ID and toy name of the toys that have been delivered?

SELECT p.toy_id,p.toy_name from toy_production p join toy_delivery d on p.toy_id=d.toy_id;
