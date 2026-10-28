# Air Quality in Milan

An end-to-end data engineering pipeline (ingestion, orchestration, transformation)
on air quality in Milan, built in 3 phases. Inspired by an exchange period in Italy.

> **Note: modeled data, not sensor readings.** Data comes from the CAMS model
> (Copernicus Atmosphere Monitoring Service, ~11 km grid) via the Open-Meteo
> Air Quality API. These are not measurements from physical sensors (ARPA Lombardia).

## Stack
Python · PostgreSQL · Docker · Airflow · dbt · Streamlit

## Status
- [ ] Phase 1: MVP (ingestion, Postgres, dashboard)
- [ ] Phase 2: orchestration with Airflow
- [ ] Phase 3: dbt, data quality and scale (Monza, Bergamo)

## Quick start (Phase 1)
_TODO._

## Design notes
- Idempotent loads: composite key (`location_id`, `ts_utc`) with upserts.
- Raw data stored in UTC; conversion to Europe/Rome happens in staging (Phase 3).
- The 50 µg/m³ reference line is the EU daily limit for PM10 only.

## Attribution
Data: Open-Meteo Air Quality API, based on Copernicus CAMS.