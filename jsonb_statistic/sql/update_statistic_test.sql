CREATE EXTENSION jsonb_statistic;

SELECT update_statistic('tablename', 'attname', 'key_path', 'value', 'text');

SELECT * from jsonb_statistics;

SELECT update_statistic('tablename', 'attname', 'key_path', 'value', 'text');

SELECT * from jsonb_statistics;

DROP EXTENSION jsonb_statistic;
