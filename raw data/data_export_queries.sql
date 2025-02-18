-- Make query to export table with all indicator data for specific indicators.
SELECT * FROM indicators
WHERE  indicator_code = "CM.MKT.INDX.ZG" OR indicator_code = "CC.EST" OR indicator_code = "CC.PER.RNK"
OR indicator_code = "CC.PER.RNK.LOWER" OR indicator_code = "CC.PER.RNK.UPPER" ;

-- Make query to export a table with country names adn country codes.
SELECT DISTINCT country_name, country_code FROM indicators;