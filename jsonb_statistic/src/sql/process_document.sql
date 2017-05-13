CREATE FUNCTION process_document(
    table_name text,
    column_name text,
    document jsonb
  )
  RETURNS VOID AS $$
BEGIN
  PERFORM process_jsonb(table_name, column_name, document, '{}'::text[], '', '');
END;
$$ LANGUAGE plpgsql;
