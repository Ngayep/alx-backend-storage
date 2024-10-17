-- Rank country origins of bands by the number of non-unique fans
-- Origin is the country of the band, and nb_fans is the sum of their fan counts


SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
