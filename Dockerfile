FROM golang:1.23

WORKDIR /app

COPY go.mod ./

COPY . .
RUN go build

EXPOSE 8080
CMD ["./azureserver"]
