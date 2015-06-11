FROM UBUNTU:latest

sudo apt-get update
sudo apt-get install nodejs

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE 80

CMD ["npm", "start"]

