FROM alpine:latest

RUN mkdir /app

COPY loggerServiceApp /app
# COPY --from=builder /app/brokerApp /app

CMD [ "/app/loggerServiceApp" ]