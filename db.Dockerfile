FROM mysql:8.0.23

RUN mkdir -p /docker-entrypoint-initdb.d/
COPY ./database/*.sql /docker-entrypoint-initdb.d/ 
ENTRYPOINT [ "sleep", "infinity" ]


