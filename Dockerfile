FROM centos/python-27-centos7:latest

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD app.py .

ADD wine-data.csv .

CMD ["python", "app.py"]
