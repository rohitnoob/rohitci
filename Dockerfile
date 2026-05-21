FROM python:3.11-slim
WORKDIR /app
RUN apt-get update && apt-get upgrade -y && apt-get clean
COPY .  /app
EXPOSE 8000
CMD ["python","-m","http.server","8000"]
