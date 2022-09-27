FROM python:3.7-slim
RUN pip install flask
RUN pip install flask-mysql
COPY . /ac02docekr-compose
WORKDIR  /ac02docker-compose
RUN chmod -R a+rwx /ac02docker-compose/templates
COPY produto.py /app.py
CMD ["python","app.py"]
