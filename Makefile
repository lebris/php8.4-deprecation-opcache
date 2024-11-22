
.PHONY: build
build:
	docker build -t lbrz/php8.4-dreprecation .

.PHONY: up
up:
	docker run -d -p 80:80 --name php8.4-deprecation lbrz/php8.4-dreprecation
