FROM golang:1.12-alpine

RUN apk add --no-cache git

WORKDIR $GOPATH/src/github.com/manas/TaskManager

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

EXPOSE 8080

CMD ["TaskManager"]