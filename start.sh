cd /tmp

nodejs --version 
npm --version

# try to remove the repo if it already exists
rm -rfv socketiotest; true

git clone https://github.com/JefStat/socketiotest.git

cd socketiotest/src

npm install

nodejs app.js