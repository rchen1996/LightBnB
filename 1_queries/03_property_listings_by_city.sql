-- show details about properties in Vancouver + avg rating
-- all columns from properties where city = Vancouver, avg rating
-- order from lowest cost_per_night to highest
-- limit to 10 results
-- only show listings with rating >= 4

SELECT properties.*, AVG(property_reviews.rating) AS average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;