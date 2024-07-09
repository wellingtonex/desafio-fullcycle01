FROM golang:1.22-alpine AS build

COPY . .

RUN go build main.go

FROM scratch
COPY --from=build /go/main .


ENTRYPOINT [ "/main"]