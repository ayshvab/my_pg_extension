MODULES = my_pg_extension
EXTENSION = my_pg_extension                 # Name of the extension
DATA = my_pg_extension--0.0.1.sql           # SQL file containing extension objects and functions

PG_CONFIG = ./pg-install/bin/pg_config # Path to the pg_config executable
PGXS := $(shell $(PG_CONFIG) --pgxs)     # Get the PostgreSQL Extension Makefile from pg_config
include $(PGXS)                          # Include the PostgreSQL Extension Makefile

