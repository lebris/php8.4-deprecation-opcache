# Deprecation notice inconsistencies with opcache enabled

php: `8.4.1`

## Test with opcache enabled

1. Build the image
```console
docker build -t lbrz/php8.4-dreprecation .
```

2. Run the container
```console
docker run -d -p 80:80 --name php8.4-deprecation lbrz/php8.4-dreprecation
```

3. Call many times http://localhos
```console
for i in {0..5}; do curl http://localhost ;done
```

**Note :** phpinfo is available at http://localhost/phpinfo.php

## Test with opcache disabled

1. Run the container
```console
docker run -d -p 8080:80 --name php8.4-deprecation-no-opcache -v "$PWD":/var/www/html php:8.4-apache
```

2. Call many times http://localhost
```console
for i in {0..5}; do curl http://localhost ;done
```

Note : phpinfo is available at http://localhost/phpinfo.php
