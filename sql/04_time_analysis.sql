USE travel_booking_db;

-- Monthly Revenue Trend
SELECT
    travel_month,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY travel_month
ORDER BY total_revenue DESC;

-- Revenue by Day of Week
SELECT
    travel_day_name,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY travel_day_name
ORDER BY total_revenue DESC;

-- Monthly Booking Volume
SELECT
    travel_month,
    COUNT(*) AS total_bookings
FROM travel_bookings
GROUP BY travel_month
ORDER BY total_bookings DESC;