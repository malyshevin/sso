.PHONY: migrate, test_migrate

migrate:
	go run ./cmd/migrator --storage-path=./storage/sso.db --migrations-path=./migrations

test_migrate:
	go run ./cmd/migrator --storage-path=./storage/sso_test.db --migrations-path=./tests/migrations --migrations-table=migrations_test
