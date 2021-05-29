SELECT ROUND(S.LAT_N,4) median 
FROM station S 
WHERE (SELECT count(Lat_N) 
       FROM station where Lat_N < S.LAT_N ) = (select count(Lat_N) 
                                               FROM station 
                                               WHERE Lat_N > S.LAT_N)
