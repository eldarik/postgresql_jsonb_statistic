EXTENSION = jsonb_statistic
DATA = $(wildcard src/sql/*.sql)
REGRESS = specs
PG_CPPFLAGS = -g -O2
PGXS := $(shell pg_config --pgxs)
include $(PGXS)
