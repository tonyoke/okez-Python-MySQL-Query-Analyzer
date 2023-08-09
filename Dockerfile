FROM python:3.7

# application package location
WORKDIR /app
# copy the current dir content into the container at /app
COPY . .
#copy requirement.txt file to the container at /app
COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 5000

CMD ["python", "app.py"]