# **** Not working this command****
# FROM python:3.9-alpine

# WORKDIR /app

# ADD requirements.txt .

# #RUN pip install --upgrade pip

# RUN pip3 install -r requirements.txt

# #copy main.py .

# COPY . .

# EXPOSE 5000

# CMD ["python3","main.py"] # not working on this command

# ****working on this configuration****
FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"] # working on this command this page
#CMD ["python3", "main.py"]