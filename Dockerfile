FROM python:3.14

RUN useradd flask

WORKDIR /home/flask

COPY . .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN chmod -R 755 .

ENV FLASK_APP=app.py

EXPOSE 5000

USER flask

CMD ["python", "app.py"]