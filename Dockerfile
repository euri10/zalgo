FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["gunicorn", "-w 4", "-b", ":8000", "app:app"]