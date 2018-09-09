FROM java:8-alpine

RUN mkdir /app
COPY ./erc20-rest-service-0.1.0.jar /app

ENV PORT=8080
ENV ENDPOINT="http://localhost:22000"
ENV FROMADDR="0xed9d02e382b34818e88b88a309c7fe71e65f419d"

ENTRYPOINT ["/usr/bin/java"]
# We can define an environment variable to interpolate these values, as Docker does not support
# this functionality, hence we have to do it in the command.
CMD ["-jar", "/app/erc20-rest-service-0.1.0.jar", \
  "--spring.application.json={\"nodeEndpoint\":\"${ENDPOINT}\",\"fromAddress\":\"${FROMADDR}\"}"]

