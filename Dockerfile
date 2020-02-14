FROM thecodingmachine/php:7.4-v3-cli-node10

USER root

# Install rsync
RUN apt install rsync -y

# Install git-ftp manually
RUN cd /tmp && git clone https://github.com/git-ftp/git-ftp.git && cd git-ftp \
    && tag="$(git tag | grep '^[0-9]*\.[0-9]*\.[0-9]*$' | tail -1)" \
    && git checkout "$tag" \
    && mv git-ftp /usr/local/bin && chmod +x /usr/local/bin

USER docker