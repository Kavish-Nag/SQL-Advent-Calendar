-- Hot Cocoa Break Logs
-- Jack Frost wants to review all the cocoa breaks he actually took — including the cocoa type and the location he drank it in. 
-- How would you combine the necessary tables to show each logged break with its matching cocoa details and location?

SELECT cl.log_id,ct.cocoa_name,l.location_name FROM cocoa_logs AS cl JOIN cocoa_types AS ct ON cl.cocoa_id = ct.cocoa_id JOIN break_schedule AS bs ON cl.break_id = bs.break_id JOIN locations AS l ON bs.location_id = l.location_id;
