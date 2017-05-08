CREATE EXTENSION jsonb_statistic;

SELECT jsonb_extract_key_paths('{"IP":"10.0.0.3","nested": { "Roles":"master" } }');

CREATE TABLE jsonb_test(x jsonb);

INSERT INTO jsonb_test VALUES
('{
  "key": "value",
  "key_1": {
    "key_2": {
      "key_3": "value"
    }
  }
}'),
('{
  "key": "value",
  "key_1": {
    "key_2": "value"
  }
}');

SELECT jsonb_extract_key_paths(x) FROM jsonb_test;

DROP TABLE jsonb_test;
DROP EXTENSION jsonb_statistic;
