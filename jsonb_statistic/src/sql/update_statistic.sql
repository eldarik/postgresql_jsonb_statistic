CREATE FUNCTION update_statistic (
    tabname text,
    colname text,
    k_path text,
    val text,
    valtype text
  )
  RETURNS VOID AS $$
DECLARE
  current_values_count integer;
BEGIN
  SELECT values_count INTO current_values_count
  FROM jsonb_statistics
  WHERE table_name = tabname and
        column_name = colname and
        key_path = k_path and
        value = val and
        value_type = valtype limit 1;
  IF NOT FOUND THEN
    INSERT INTO jsonb_statistics
    VALUES (tabname, colname, k_path, val, valtype, 1);
  ELSE
    UPDATE jsonb_statistics
    SET values_count = current_values_count + 1
    WHERE table_name = tabname and
          column_name = colname and
          key_path = k_path and
          value = val and
          value_type = valtype;
  END IF;
END;
$$ LANGUAGE plpgsql;
