USE travel_booking_db;

-- Business Analysis 1: Revenue by Route
SELECT
    route,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY route
ORDER BY total_revenue DESC;

-- Business Analysis 2: Revenue by Operator
SELECT
    operator_name,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY operator_name
ORDER BY total_revenue DESC;

-- Business Analysis 3: Booking Channel Performance
SELECT
    booking_channel,
    COUNT(*) AS total_bookings,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY booking_channel;

-- Business Analysis 4: Payment Method Popularity
SELECT
    payment_method,
    COUNT(*) AS total_bookings
FROM travel_bookings
GROUP BY payment_method
ORDER BY total_bookings DESC;

-- Business Analysis 5: Revenue by Seat Type
SELECT
    seat_type,
    COUNT(*) AS total_bookings,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY seat_type;

-- Business Analysis 6: Trip Type Performance
SELECT
    trip_type,
    COUNT(*) AS total_bookings,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY trip_type;

-- Business Analysis 7: Customer Loyalty Analysis
SELECT
    loyalty_status,
    COUNT(*) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings
GROUP BY loyalty_status;