cd /tmp

# try to remove the repo if it already exists
rm -rf socketiotest; true

git clone https://github.com/JefStat/socketiotest.git

cd socketiotest/src

npm install

nodejs .