# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY code/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY code/ .

EXPOSE 5000

CMD ["python", "run.py"]