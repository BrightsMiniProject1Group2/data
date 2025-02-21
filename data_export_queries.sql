-- Make query to export table with all indicator data for specific indicators.
SELECT * FROM indicators
WHERE  indicator_code = "CM.MKT.INDX.ZG" OR indicator_code = "CC.EST" OR indicator_code = "CC.PER.RNK"
OR indicator_code = "CC.PER.RNK.LOWER" OR indicator_code = "CC.PER.RNK.UPPER" ;

-- Make query to export a table with country names and country codes.
SELECT DISTINCT country_name, country_code FROM indicators;

-- Make queries for different indicator values and export as .csv data.
SELECT * FROM indicators 
WHERE indicator_code = "CM.MKT.INDX.ZG";

SELECT * FROM indicators 
WHERE indicator_code = "CC.EST";

SELECT * FROM indicators 
WHERE indicator_code = "CC.PER.RNK";

SELECT * FROM indicators 
WHERE indicator_code = "CC.PER.RNK.UPPER";

SELECT * FROM indicators 
WHERE indicator_code = "CC.PER.RNK.LOWER";

SELECT * FROM indicators 
WHERE indicator_code = "PV.EST";

SELECT * FROM indicators 
WHERE indicator_code = "PV.PER.RNK";

SELECT * FROM indicators 
WHERE indicator_code = "SI.POV.GINI";