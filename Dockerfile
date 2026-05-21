FROM python:3.8-slim
WORKDIR /app
RUN apt-get update && apt-get install -y python3-pip
COPY .  /app
EXPOSE 8000
CMD ["python","-m","http.server","8000"]
