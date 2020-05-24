########### builder ###########
FROM golang AS builder

RUN go get github.com/gin-gonic/gin

COPY main.go .

ENV CGO_ENABLED=0

RUN go build main.go

########### gin-greetings ###########
FROM scratch

COPY --from=builder /go/main .

EXPOSE 80

CMD ["/main"]
