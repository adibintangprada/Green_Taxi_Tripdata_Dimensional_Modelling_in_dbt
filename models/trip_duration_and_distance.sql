with trip_duration_and_distance as (select VendorID, 
timestamp_diff(lpep_dropoff_datetime, lpep_pickup_datetime, minute) as trip_duration,
trip_distance
from {{ref('green_taxi_tripdata_2021')}}
order by trip_duration desc)

select * from trip_duration_and_distance