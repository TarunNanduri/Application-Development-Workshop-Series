const express = require("express");
const app = express();

app.use(express.static('web'));

//make way for some custom css, js and images
app.use('/css', express.static(__dirname + '/web/css'));
app.use('/fonts', express.static(__dirname + '/web/fonts'));
app.use('/img', express.static(__dirname + '/web/images'));
app.use('/js', express.static(__dirname + '/web/js'));

const port = process.env.PORT || 3000;
const server = app.listen(port, function () {
    const port = server.address().port;
    console.log(`Server started at http://localhost:${port}`);
});