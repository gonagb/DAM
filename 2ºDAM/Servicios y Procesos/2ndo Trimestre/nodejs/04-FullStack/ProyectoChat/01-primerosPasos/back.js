var servidor = require('http');
var ruta = require('url');
var procesador = require('querystring')
servidor.createServer(function(req,res){
   res.writeHead(200,{'Content-Type':'text/html'});
       switch(req.url){
        case "/":
           console.log("Principal");
            break;
        case "/recibe":
           console.log("Recibe");
            break;
        case "/envia":
           console.log("Envía");
            break;    
    }    
}).listen(80);