CREATE EXTENSION jsonb_statistic;

SELECT process_document(
         'tablename',
         'attname',
         '{
           "key": "value",
           "key_1": {
             "key_2": {
               "key_4": false,
               "key_5": true,
               "key_6": 4.5,
               "key_7": 10000
             }
           }
         }'
      );

SELECT * from jsonb_statistics;

DROP EXTENSION jsonb_statistic;
