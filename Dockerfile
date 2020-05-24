########### builder ###########
FROM golang AS builder

COPY main.go .

RUN go build main.go

########### gin-greetings ###########
FROM scratch

COPY --from=builder /go/main .

CMD ["/main"]
