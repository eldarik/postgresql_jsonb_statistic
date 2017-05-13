CREATE EXTENSION jsonb_statistic;

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

SELECT generate_statistic('{{"jsonb_test", "x"}}');

SELECT * from jsonb_statistics;

DROP TABLE jsonb_test;

DROP EXTENSION jsonb_statistic;
