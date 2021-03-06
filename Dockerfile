FROM alpine
MAINTAINER deepzz <deepzz.qi@gmail.com>

RUN apk update
RUN apk add ca-certificates
ADD static/tzdata/Shanghai /etc/localtime

COPY . /eiblog
EXPOSE 9000
WORKDIR /eiblog
ENTRYPOINT ["./eiblog"]
