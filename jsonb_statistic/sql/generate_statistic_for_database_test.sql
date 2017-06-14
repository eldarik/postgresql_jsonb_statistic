CREATE EXTENSION jsonb_statistic;

CREATE TABLE jsonb_test(x jsonb);
CREATE TABLE jsonb_test_2(x jsonb);

INSERT INTO jsonb_test VALUES
('{
  "key": "value",
  "key_1": {
    "key_2": {
      "key_4": false,
      "key_5": true,
      "key_6": 4.5,
      "key_7": 10000
    }
  }
}'),
('{
  "key": "value",
  "key_1": {
    "key_2": "value"
  }
}');

INSERT INTO jsonb_test_2 VALUES
('{
  "key": "value",
  "key_1": {
    "key_2": {
      "key_4": false,
      "key_5": true,
      "key_6": 4.5,
      "key_7": 10000
    }
  }
}'),
('{
  "key": "value",
  "key_1": {
    "key_2": "value"
  }
}');

SELECT generate_statistic_for_database();

SELECT * from jsonb_statistics;

DROP TABLE jsonb_test;

DROP EXTENSION jsonb_statistic;
