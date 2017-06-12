-- Usage: select generate_statistic_for_database();
CREATE FUNCTION generate_statistic_for_database()
  RETURNS VOID AS $$
BEGIN
  PERFORM generate_statistic(
    array (
      SELECT array [table_name::text, column_name::text]
    )
  ) FROM information_schema.columns WHERE data_type = 'jsonb';
END;
$$ LANGUAGE plpgsql;
