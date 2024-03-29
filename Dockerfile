FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /attuare
WORKDIR /attuare
COPY requirements.txt /attuare/
RUN pip install -r requirements.txt

COPY . /attuare/
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]