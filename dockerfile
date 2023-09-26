# Import python from dockerhub.
FROM python:3.9-slim-buster

# Create a working directory app.
WORKDIR /app

# Copy the requirements.txt file inside the app directory.
COPY ./requirements.txt /app

# Install all the dependencies from the requirements.txt file.
RUN pip install -r requirements.txt

# Copy the entire app project into the app directory.
COPY . .

# We expose port 5000 as the app will run on port 5000.
EXPOSE 5000

# Define the FLASK_APP environment variable. Else the interpreter may complain it’s unable to find the variable
ENV FLASK_APP=app.py

# Finally, type in the run command which is flask run --host 0.0.0.0. This is to ensure the server accepts requests from all hosts.
CMD ["flask", "run", "--host", "0.0.0.0", "--port=5000"]
