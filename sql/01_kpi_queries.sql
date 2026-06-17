USE travel_booking_db;
-- KPI 1: Total number of bookings
SELECT
    COUNT(*) AS total_bookings
FROM travel_bookings;

-- KPI 2: Total revenue
SELECT
    ROUND(SUM(revenue), 2) AS total_revenue
FROM travel_bookings;

-- KPI 3: Average ticket price
SELECT
    ROUND(AVG(ticket_price), 2) AS average_ticket_price
FROM travel_bookings;

-- KPI 4: Booking cancellation rate
SELECT
    ROUND(AVG(booking_cancelled) * 100, 2)
    AS cancellation_rate_percentage
FROM travel_bookings;

-- KPI 5: Average booking lead time
SELECT
    ROUND(AVG(booking_lead_days), 2)
    AS average_lead_days
FROM travel_bookings;