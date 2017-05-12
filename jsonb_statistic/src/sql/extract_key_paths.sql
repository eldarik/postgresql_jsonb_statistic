CREATE FUNCTION
  extract_key_paths(
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
      PERFORM extract_key_paths(document, paths, k, key_path || '->' || k) from (
        SELECT jsonb_object_keys(document) as k
      ) as keys;
    ELSE
      value := document -> key;
      jtype := jsonb_typeof(value);
      IF jtype = 'object' THEN
        PERFORM extract_key_paths(value, paths, '', key_path);
      ELSE
        INSERT INTO temporary_extract_key_paths VALUES (key_path::text, value::text);
      END IF;
    END IF;
  END IF;
END;
$$ LANGUAGE plpgsql;
