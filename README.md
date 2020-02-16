# Docker image with PHP, Node, and rsync.

## Usage

Run:

    $ docker run -it --rm -v $PWD/composer:/composer -v $PWD/npm:/npm rzky/deploy-php-node:latest

Example:

    git clone <your-app>
    cd <your-app>
    
    composer install
    npm install
    npm run build

    rsync -uavn --delete ./ $APP_USER@$APP_HOST:$APP_PATH

## Development

Build:

    $ docker build -t rzky/deploy-php-node:latest .

Push:

    $ docker push rzky/deploy-php-node:latest

