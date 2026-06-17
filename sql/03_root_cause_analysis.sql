USE travel_booking_db;

-- Root Cause 1: Cancellation Rate by Route
SELECT
    route,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY route
ORDER BY cancellation_rate DESC;

-- Root Cause 2: Cancellation Rate by Operator
SELECT
    operator_name,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY operator_name
ORDER BY cancellation_rate DESC;

-- Root Cause 3: Cancellation Rate by Booking Channel
SELECT
    booking_channel,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY booking_channel
ORDER BY cancellation_rate DESC;

-- Root Cause 4: Cancellation Rate by Payment Method
SELECT
    payment_method,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY payment_method
ORDER BY cancellation_rate DESC;

-- Root Cause 5: Cancellation Rate by Customer Segment
SELECT
    customer_segment,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY customer_segment
ORDER BY cancellation_rate DESC;

-- Root Cause 6: Cancellation Rate by Lead Time Group
SELECT
    CASE
        WHEN booking_lead_days <= 7 THEN '0-7 days'
        WHEN booking_lead_days <= 30 THEN '8-30 days'
        WHEN booking_lead_days <= 90 THEN '31-90 days'
        ELSE '90+ days'
    END AS lead_time_group,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_cancelled) * 100, 2) AS cancellation_rate
FROM travel_bookings
GROUP BY lead_time_group
ORDER BY cancellation_rate DESC;