SELECT ROUND(LONG_W,4)
FROM STATION 
WHERE LAT_N = ( SELECT min(LAT_N) FROM STATION WHERE LAT_N > 38.7780);
