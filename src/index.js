const express = require( "express" );
const app = express();
const port = 8080; // default port to listen
const util = require("./util");

// define a route handler for the default home page
app.get( "/", ( req, res ) => {
    res.send( util.getHelloWorld() );
} );

// start the Express server
app.listen( port, () => {
    console.log( `server started at http://localhost:${ port }` );
} );