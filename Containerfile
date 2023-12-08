FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN firstflaskproject create-db
RUN firstflaskproject populate-db
RUN firstflaskproject add-user -u admin -p admin
EXPOSE 5000
CMD ["firstflaskproject", "run"]
