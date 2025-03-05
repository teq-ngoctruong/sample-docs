.phony: dev/local/docs docs/prepare

dev/local/docs:
	docker compose up

docs/prepare:
	docker compose build
