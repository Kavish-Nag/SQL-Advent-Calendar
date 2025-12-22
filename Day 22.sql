-- Penguin Sleigh Ride Filter
-- The penguins are signing up for a community sleigh ride, but the organizers need a list of everyone who did NOT choose the "Evening Ride." 
-- How would you return all penguins whose selected time is not the evening slot?

SELECT * FROM sleigh_ride_signups where ride_time is not "Evening";
