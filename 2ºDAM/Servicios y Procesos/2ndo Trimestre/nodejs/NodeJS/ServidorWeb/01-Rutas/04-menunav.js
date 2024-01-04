var servidor = require('http');

servidor.createServer(function(req, res){
    console.log("Alguien ha cargado la web");
    res.writeHead(200, {'content-type': 'text/html'});
    res.write("<h1> Hola mundo desde Node.js </h1>");
    res.write(`
        <ul>
            <li>
                <a href="/">Inicio</a>
            </li>  
            <li>
                <a href="/aboutme">Sober Mi</a>
            </li>
            <li>
                <a href="/contacto">Contacto</a>
            </li>                  
        </ul>
    `);


    switch(req.url){
        case "/":
            res.end("Estás en la página principal");
            break;
        case "/aboutme":
            res.end("Estás en la página about me");
            break;    
        case "/contacto":
            res.end("Estás en la página de contacto");
            break;
        default:
            res.end(" Página no encontrada ");
    }
}).listen(80);
