FROM python:3.11
ADD requirments.txt requirments.txt
RUN pip install -r requirments.txt
RUN mkdir /app
WORKDIR /app
ADD mysite .
ENTRYPOINT [ "python", "manage.py", "runserver", "0:8000" ]