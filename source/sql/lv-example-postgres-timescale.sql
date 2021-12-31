-- create timeseries table --
-- DROP TABLE timeseries
CREATE TABLE timeseries (
	time timestamp,
	value double precision,
    PRIMARY KEY (time)
);

-- create hypertable from timeseries table --
SELECT create_hypertable(relation => 'timeseries', time_column_name => 'time', chunk_time_interval => '1 minute'::interval);

-- enable compression on timeseries hypertable --
ALTER TABLE timeseries SET (timescaledb.compress);