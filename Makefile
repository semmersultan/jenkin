test-lint-yaml:
	@echo "----------------- Test Lint YAML"
	@docker-compose run --rm yamllint cfn/* .

Jenkin:
	docker-compose run --rm stackup app-server up -t app.yml -p prod.yml

destroy:
	docker-compose run --rm stackup app-server delete
