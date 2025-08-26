# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

#FROM python:3.10.8-slim-buster

#RUN apt update && apt upgrade -y
#RUN apt install git -y
#COPY requirements.txt /requirements.txt

#RUN cd /
#RUN pip3 install -U pip && pip3 install -U -r requirements.txt
#RUN mkdir /VJ-File-Store
#WORKDIR /VJ-File-Store

# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

# Install required system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
 && rm -rf /var/lib/apt/lists/*

# Copy and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir -r /requirements.txt

# Setup working directory
WORKDIR /VJ-File-Store
COPY . /VJ-File-Store

# Start the bot
CMD ["python", "bot.py"]
COPY . /VJ-File-Store
CMD ["python", "bot.py"]
