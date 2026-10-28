CREATE TABLE IF NOT EXISTS raw_air_quality_hourly (
    location_id   TEXT             NOT NULL,
    ts_utc        TIMESTAMPTZ      NOT NULL,
    pm10          DOUBLE PRECISION,
    pm2_5         DOUBLE PRECISION,
    no2           DOUBLE PRECISION,
    o3            DOUBLE PRECISION,
    so2           DOUBLE PRECISION,
    european_aqi  DOUBLE PRECISION,
    ingested_at   TIMESTAMPTZ      NOT NULL DEFAULT now(),
    PRIMARY KEY (location_id, ts_utc)
);