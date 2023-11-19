FROM rust

RUN cargo install --git https://github.com/ankitects/anki.git --tag 2.1.66 anki-sync-server

CMD ["anki-sync-server"]