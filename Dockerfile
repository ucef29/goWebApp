FROM golang:alpine

MAINTAINER "Youssef Lamani <yousseflamani@gmail.com>"

RUN mkdir /go/src/webapp

WORKDIR /go/src/webapp

COPY . /go/src/webapp

RUN cd /go/src/webapp && go build -o main

EXPOSE 8000

ENTRYPOINT "./main"