FROM golang:1.15.2

# RUN adduser --disabled-password --memist '' ndira
# USER ndira

WORKDIR /go/src/app
COPY . .

RUN go install -v ./...

CMD [ "app" ]