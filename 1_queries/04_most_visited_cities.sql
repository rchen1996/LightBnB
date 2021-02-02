-- get list of most visited cities
-- select city name, number of reservations for that city
-- order from highest reservations to lowest
SELECT properties.city, COUNT(reservations) AS total_reservations
FROM reservations
JOIN properties ON properties.id = property_id
GROUP BY properties.city
ORDER BY total_reservations DESC;