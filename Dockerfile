# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /Spaceship

# Copy the game code into the container
COPY . /Spaceship

# Copy the requirements.txt file into the container
COPY requirements.txt .
COPY background.jpg .
COPY spaceship.png .
COPY explosion.png .
COPY bullet.png .
COPY alien.png .
COPY special_alien.png .
COPY special_alien_bullet.png .

COPY special_alien.py .
COPY spaceship_game.py .
COPY special_alien_bullet.py .
COPY alien.py .
COPY spaceship.py .
COPY bullet.py .

COPY config.json .
COPY config.py .

# Install dependencies

RUN python3 config.py
RUN pip3 install pygame mysql-connector-python

# Set the command to run the game
CMD ["python", "spaceship_game.py"]

