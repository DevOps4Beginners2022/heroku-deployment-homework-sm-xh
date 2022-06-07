FROM golang:1.17-alpine

WORKDIR /usr/src/app

COPY go.mod go.sum main.go ./

RUN go mod download

ARG PORT=8080

ENV PORT=$PORT

EXPOSE $PORT

RUN go build -o app-server

CMD ["./app-server"]