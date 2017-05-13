CREATE FUNCTION process_jsonb(
    table_name text,
    column_name text,
    document jsonb,
    paths text[],
    key text,
    key_path text
  )
  RETURNS VOID AS $$
DECLARE
  jtype text;
  value jsonb;
BEGIN
  jtype := jsonb_typeof(document);
  IF jtype = 'object' THEN
    IF key = '' THEN
      PERFORM process_jsonb(table_name, column_name, document, paths, k, key_path || '->' || k) from (
        SELECT jsonb_object_keys(document) as k
      ) as keys;
    ELSE
      value := document -> key;
      jtype := jsonb_typeof(value);
      IF jtype = 'object' THEN
        PERFORM process_jsonb(table_name, column_name, value, paths, '', key_path);
      ELSE
        PERFORM update_statistic(
          table_name,
          column_name,
          key_path,
          value::text,
          jtype
        );
      END IF;
    END IF;
  END IF;
END;
$$ LANGUAGE plpgsql;
