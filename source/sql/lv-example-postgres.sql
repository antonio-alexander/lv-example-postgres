-- create timeseries table --
-- DROP TABLE timeseries
CREATE TABLE timeseries (
	time timestamp,
	value double precision,
    PRIMARY KEY (time)
);
