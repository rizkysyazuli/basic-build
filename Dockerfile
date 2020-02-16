FROM thecodingmachine/php:7.4-v3-cli-node12

USER root

# Install rsync
RUN apt install rsync -y

# Create docker-owned NPM cache directory
RUN mkdir /home/docker/.npm; chown docker:docker /home/docker/.npm

USER docker

CMD ["bash"]