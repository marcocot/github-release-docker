FROM golang:1.15.6-buster

RUN go get github.com/github-release/github-release

RUN apt update && apt install -y zip \
    && rm -rf /var/lib/apt/lists/*

ENV GITHUB_TOKEN fillme