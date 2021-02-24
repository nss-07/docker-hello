FROM python:3.9.2-alpine3.12

WORKDIR /src

# installing dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY /src .

CMD ["python", "index.py"]