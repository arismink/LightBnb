SELECT
  reservations.id,
  title,
  start_date,
  cost_per_night,
  AVG(rating) average_rating

FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id

WHERE reservations.guest_id = 1

GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10
;