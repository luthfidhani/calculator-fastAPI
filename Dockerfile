FROM python:3.9

ENV APP_HOME /app
# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1 
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# Copy local code to the container image.
WORKDIR $APP_HOME
COPY . ./

# Install production dependencies.
RUN pip install --no-cache-dir -r requirements.txt

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app