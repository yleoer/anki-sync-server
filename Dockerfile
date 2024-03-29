FROM rust

RUN apt-get update && apt-get install -y \
    protobuf-compiler \
  && rm -rf /var/lib/apt/lists/* \
  && cargo install --git https://github.com/ankitects/anki.git --tag 23.12.1 anki-sync-server

CMD ["anki-sync-server"]
