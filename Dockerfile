FROM golang:latest

RUN mkdir /build
WORKDIR /build


RUN export GO111MODULE=on
RUN go get github.com/mbharatk/GOLANG/rest-api
RUN cd /build && git clone https://github.com/mbharatk/GOLANG.git

RUN cd /build/GOLANG/rest-api && go build

EXPOSE 8080

ENTRYPOINT [ "/build/GOLANG/rest-api/main" ]