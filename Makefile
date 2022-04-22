GREENLIGHT_DB_DSN := 'postgres://greenlight:p4ssw0rd@localhost/greenlight?sslmode=disable'

run:
	@GREENLIGHT_DB_DSN=$(GREENLIGHT_DB_DSN) go run ./cmd/api

migrate:
	migrate -path=./migrations -database=$(GREENLIGHT_DB_DSN) up

rollback:
	migrate -path=./migrations -database=$(GREENLIGHT_DB_DSN) down 1

psql:
	@psql $(GREENLIGHT_DB_DSN)

.PHONEY: run migrate rollback psql
