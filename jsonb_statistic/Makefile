EXTENSION = jsonb_statistic
DATA = jsonb_statistic--1.0.sql
REGRESS = generate_statistic_for_database_test \
					generate_statistic_test \
					process_document_test \
					process_jsonb_test \
					update_statistic_test \

PG_CPPFLAGS = -g -O2
PGXS := $(shell pg_config --pgxs)
include $(PGXS)
all:
	cat src/sql/*.sql > jsonb_statistic--1.0.sql

