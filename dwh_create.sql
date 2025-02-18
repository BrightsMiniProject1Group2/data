DROP TABLE IF EXISTS economics_happiness_fact;
DROP TABLE IF EXISTS year_dim;
DROP TABLE IF EXISTS country_dim;

CREATE TABLE IF NOT EXISTS year_dim(
	year_id SERIAL PRIMARY KEY,
	year_ INT CHECK (year_ > 0 )
);

INSERT INTO year_dim (year_)
SELECT generate_series(1960, 2025);

SELECT * FROM year_dim;

CREATE TABLE IF NOT EXISTS country_dim(
	country_id SERIAL PRIMARY KEY,
	country_name TEXT,
	country_code CHAR(3)
);

SELECT * FROM country_dim ;


CREATE TABLE IF NOT EXISTS economics_happiness_fact (
	id SERIAL PRIMARY KEY,
	country_id INT REFERENCES country_dim(country_id),
	life_ladder FLOAT CHECK (life_ladder BETWEEN 0 AND 10),
	social_support FLOAT CHECK (social_support BETWEEN 0 AND 1),
	healthy_life_exp FLOAT CHECK (healthy_life_exp >0),
	freedom_to_make_life_choices FLOAT CHECK (freedom_to_make_life_choices BETWEEN 0 AND 1),
	perceptions_of_corruption FLOAT CHECK (perceptions_of_corruption BETWEEN 0 AND 1),
	positive_affect FLOAT CHECK (positive_affect BETWEEN 0 AND 1),
	negative_affect FLOAT CHECK (negative_affect BETWEEN 0 AND 1),
	cc_estimate FLOAT,
	cc_rank FLOAT,
	cc_rank_upper FLOAT,
	cc_rank_lower FLOAT,
	s_and_p_global_equity_indices FLOAT,
	dept_per_gdp FLOAT,
	log_gdp_capita FLOAT,
	year_id INT REFERENCES year_dim(year_id)
);
 /*
INSERT INTO economics_happiness_fact (country_id, life_ladder, social_support, healthy_life_exp, freedom_to_make_life_choices, perceptions_of_corruption, 
positive_affect, negative_affect, cc_estimate, cc_rank, cc_rank_upper, cc_rank_lower, s_and_p_global_equity_indices, gdp, dept_per_gdp,
log_gdp_capita, year_id) VALUES (1, 3.5, 0.265, 55, 0.35, 0.35, 0.566, 0.62, 25.2145,25.2145,25.2145,25.2145,25.2145,25.2145,25.2145,25.2145,1);

SELECT * FROM economics_happiness_fact;*/