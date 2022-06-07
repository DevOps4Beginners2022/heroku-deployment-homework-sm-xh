FROM golang:1.17-alpine

ARG PORT=8080

WORKDIR /app

COPY go.mod go.sum main.go ./

RUN go mod download

RUN go build -o app-server

ENV PORT=$PORT

EXPOSE $PORT

CMD [ "./app-server" ] 