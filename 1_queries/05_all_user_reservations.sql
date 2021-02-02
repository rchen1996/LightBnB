-- show all reservations for a user
-- select all columns from reservations, properties, avg rating
-- reservations for single user
-- order from earliest start_date to most recent
-- only get reservations where end_date is in past
-- use now()::date to get today's date
-- limit to 10
SELECT reservations.*, properties.*, AVG(rating) AS average_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date
LIMIT 10;