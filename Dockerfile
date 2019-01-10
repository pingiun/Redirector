FROM rust:1.28.0

WORKDIR /usr/src/redirector
COPY . .

RUN cargo install --path .

ENV RUST_LOG redirector=info

CMD ["redirector"]
