var express = require('express');
var app = express();
var httpserver = app.listen(80);
var io = require('socket.io')(httpserver);

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function (socket) {
  socket.emit('news', { hello: 'world' });
  socket.on('my other event', function (data) {
    console.log(data);
  });
});