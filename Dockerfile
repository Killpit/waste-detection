FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt install awscli -y

RUN apt install ffmpeg libsm6 libxext6 unzip -y

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
