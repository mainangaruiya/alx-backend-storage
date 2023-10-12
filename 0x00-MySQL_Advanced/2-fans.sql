--SQL script that ranks country origins of bands
--ordered by the number of (non-unique) fans
SElECT origin , SUM(nb_fans) AS total_fans
	FROM metal_bands
	GROUP BY origin
	ORDERED BY total_fans DESC;