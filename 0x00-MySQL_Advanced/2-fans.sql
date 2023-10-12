--SQL script that ranks country origins of bands
--ordered by the number of (non-unique) fans
SElECT origin , SUM(fans) AS nb_fans
	FROM metal_bands
	GROUP BY origin
	ORDERED BY nb_fans DESC;