FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    pip install --break-system-packages -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
