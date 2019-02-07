#import python runtime and set up workdir
FROM python:2.7-slim
WORKDIR /app
ADD . /app

#install dependencies
RUN pip install -r requirements.txt

#open port 80 for serving webapge
EXPOSE 80

#run app.py when container launches
CMD ["python","app.py"]
