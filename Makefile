test-lint-yaml:
	@echo "----------------- Test Lint YAML"
	@docker-compose run --rm yamllint cfn/* .

Jenkin:
	docker-compose run --rm stackup Jenkins up -t app.yml -p prod.yml

destroy:
	docker-compose run --rm stackup Jenkins delete 
