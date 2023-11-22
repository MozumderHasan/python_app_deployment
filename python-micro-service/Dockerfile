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
# FROM python:3.9-alpine

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# COPY . .

# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"] # working on this command this page
# #CMD ["python3", "main.py"]

# Stage 1: Build the application
# FROM python:3.9-alpine AS builder

# WORKDIR /app

# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .
# RUN pip3 freeze > requirements.txt

# FROM alpine AS runtime

# WORKDIR /app

# COPY --from=builder /app/requirements.txt .
# RUN apk add --no-cache python3
# RUN pip install -r requirements.txt
# COPY --from=builder /app .

# EXPOSE 8000
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"]
# Stage 1: Build the application

# Stage 1: Build the application

# FROM python:3.9-alpine AS builder

# WORKDIR /app

# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .
# RUN pip3 freeze > requirements.txt

# # Stage 2: Run the application

# FROM alpine AS runtime

# WORKDIR /app

# COPY --from=builder /app/requirements.txt .
# RUN pip install --upgrade pip
# RUN apk add --no-cache python3
# RUN pip install -r requirements.txt
# COPY --from=builder /app .

# EXPOSE 8000
# CMD ["python3","app.py"]


#---------------------------------------------------------------------
FROM python:3.9 AS build

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

FROM python:3.9-slim AS runtime

RUN pip install flask
RUN pip install gunicorn

WORKDIR /app

COPY --from=build /app/requirements.txt .
COPY . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"]


#----------------------------------------------------------------------