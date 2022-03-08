FROM python:3.6.1-alpine
RUN pip install --upgrade pip
RUN pip install flask
RUN pip install Flask-RESTful
COPY main.py /main.py
CMD ["python","main.py"]