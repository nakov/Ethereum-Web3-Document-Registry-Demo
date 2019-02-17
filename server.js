// Create the Express app
const express = require("express");
const app = express();

// Enable static access to the "/public" folder
app.use(express.static('.', {index: './document-registry.html'}));

let port = process.argv[2];
if (!port) port = process.env['PORT'];
if (!port) port = 80;

const server = app.listen(port, function(){
    console.log('Server started: http://localhost:' + 
		server.address().port);
});
