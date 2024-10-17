-- List all bands with Glam rock as their main style, ranked by longevity
-- Band name is the band's name and lifespan is the number of years from formed to either split or 2022


SELECT name AS band_name,
	IFNULL(split - formed, 2022 - formed) AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;
