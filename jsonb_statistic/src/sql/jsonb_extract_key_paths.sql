--SELECT jsonb_extract_key_paths('{"IP":"10.0.0.3","nested": { "Roles":"master" } }');
--returns {'->IP','->nested->Roles'}
CREATE FUNCTION
  jsonb_extract_key_paths(document jsonb)
  RETURNS text[] AS $$
BEGIN
  PERFORM extract_key_paths(document, '{}'::text[], '', '');
  RETURN array(SELECT key_path from temporary_extract_key_paths);
END;
$$ LANGUAGE plpgsql;

