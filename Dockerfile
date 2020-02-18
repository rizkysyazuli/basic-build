FROM thecodingmachine/php:7.4-v3-cli-node12

LABEL maintainer="Rizky Syazuli <rzky@me.com>"

USER root

# Install rsync
RUN apt install rsync -y

# Create docker-owned NPM & Composer cache directory
ENV COMPOSER_HOME=/composer
ENV npm_config_cache=/npm
RUN mkdir /npm; chown docker:docker /npm
RUN mkdir /composer; chown docker:docker /composer

# Use Bash shell and update PATHs
SHELL ["/bin/bash", "-c"]
RUN echo "export PATH=/composer/vendor/bin:${PATH}" >> /home/docker/.bashrc

USER docker

CMD ["bash"]