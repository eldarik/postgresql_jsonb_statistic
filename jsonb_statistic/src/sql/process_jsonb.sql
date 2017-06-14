CREATE FUNCTION process_jsonb(
    tablename text,
    attname text,
    document jsonb,
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
      PERFORM process_jsonb(tablename, attname, document, k, key_path || ',' || k) from (
        SELECT jsonb_object_keys(document) as k
      ) as keys;
    ELSE
      value := document -> key;
      jtype := jsonb_typeof(value);
      IF jtype = 'object' THEN
        PERFORM process_jsonb(tablename, attname, value, '', key_path);
      ELSE
        PERFORM update_statistic(
          tablename,
          attname,
          key_path,
          value::text,
          jtype
        );
      END IF;
    END IF;
  END IF;
END;
$$ LANGUAGE plpgsql;
