CREATE FUNCTION process_document(
    tablename text,
    attname text,
    document jsonb
  )
  RETURNS VOID AS $$
BEGIN
  PERFORM process_jsonb(tablename, attname, document, '', '');
END;
$$ LANGUAGE plpgsql;
