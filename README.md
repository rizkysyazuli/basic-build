# Docker image with PHP, Node, and rsync.

## How to use

Run:

    $ docker run -it --rm -v $PWD/composer:/composer -v $PWD/npm:/npm rzky/deploy-php-node:latest

We mounted the `composer` and `npm` cache directory to speed up build.

Example usage:

    git clone <your-app>
    cd <your-app>
    
    composer install
    npm install
    npm run build

    rsync -uav --delete ./ username@somehost.com:/path/to/app

## Development

Build:

    $ docker build -t rzky/deploy-php-node:latest .

Push:

    $ docker push rzky/deploy-php-node:latest

