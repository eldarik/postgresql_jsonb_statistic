-- Usage: select generate_statistic('{{"table1", "col1"}, {"table2", "col2"}}');
CREATE FUNCTION generate_statistic(
    tables_and_columns text[][]
  )
  RETURNS VOID AS $$
DECLARE
  tabname text;
  colname text;
  query text := '';
BEGIN
  IF cardinality(tables_and_columns) = 0 THEN
    RAISE NOTICE 'First argument should not be an empty array!';
  END IF;

  FOR i IN array_lower(tables_and_columns, 1)..array_upper(tables_and_columns, 1)
  LOOP
    tabname := tables_and_columns[i][1];
    colname := tables_and_columns[i][2];
    RAISE NOTICE '%', tabname;
    RAISE NOTICE '%', colname;

    IF (tabname IS NULL) OR (colname IS NULL) THEN
      RAISE NOTICE 'Invalid list of tables and columns!';
    ELSIF position('"' in tabname) <> 0 THEN
      RAISE NOTICE 'Invalid table name %', tabname;
    ELSIF position('"' in colname) <> 0 THEN
      RAISE NOTICE 'Invalid column name %', tabname;
    END IF;
    query :=
      query || 'SELECT process_document("' || colname || '"::text, "' ||
               tabname || '"::text,' || colname || ') from ' || tabname || ';';
  END LOOP;
  EXECUTE query;
END;
$$ LANGUAGE plpgsql;
