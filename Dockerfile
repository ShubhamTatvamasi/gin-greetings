########### builder ###########
FROM golang AS builder

RUN go get github.com/gin-gonic/gin

COPY main.go .

RUN go build main.go

########### gin-greetings ###########
FROM scratch

COPY --from=builder /go/main .

CMD ["/main"]
