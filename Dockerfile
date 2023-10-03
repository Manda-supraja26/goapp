FROM golang:latest
WORKDIR /app/src/moviestore 
ENV GOPATH=/app 
COPY . /app/src/moviestore/
RUN go get "github.com/jinzhu/gorm" && go get "github.com/jinzhu/gorm/dialects/mysql" && "github.com/gorilla/mux" 
RUN cd /cmd 
RUN go build -o main .
CMD [ "./main" ]

