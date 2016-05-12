<%-- 
    Document   : regiad
    Created on : 12/05/2016, 07:48:13 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Saving Your Car</title>
        <meta charset="utf-8" />
	
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
                <script type="text/javascript">

window.onunload = sale;
var valor;
if(document.cookie){
	galleta = unescape(document.cookie)
	galleta = galleta.split(';')
	for(m=0; m<galleta.length; m++){
		if(galleta[m].split('=')[0] == "recarga"){
			valor = galleta[m].split('=')[1]
			break;
		}
	}
	if(valor == "sip"){
		document.cookie = "recarga=nop"; 
		window.onunload = function(){};
		document.location.reload()
	}
	else{
	window.onunload=sale
	}
}
function sale(){
	document.cookie ="recarga=sip"
}
</script>
                      <%
                          
                          

String nom = (String)session.getAttribute("usu");
String compa = (String)session.getAttribute("nomb");
if(nom==null){
     response.setContentType("text/html");  
               out.println("<head>");
                out.println("<link rel=\"stylesheet\" href=\"assets/css/main.css\" />");
                out.println("<script src=\"dist/sweetalert.min.js\"></script> <link rel=\"stylesheet\" type=\"text/css\" href=\"dist/sweetalert.css\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<br>");
                out.println("<script type=\"text/javascript\">");  
                out.println("sweetAlert({\n" +
"    title: \"Error!\",\n" +
"    text: \"Inicia sesion!\",\n" +
"    type: \"error\"\n" +
"},\n" +
"\n" +
"function () {\n" +
"    window.location.href = 'index.html';\n" +
"});"); 
out.println("</script>"); 
}

%>
                <script type="text/javascript">
                   
                    function validacp(e)
            {
                var keycar;
                if(window.event)
                    keycar = e.keyCode;
                else
                    if(e.which)
                        keycar=e.which;
                if(keycar>=48 && keycar<=57)
                    return true;
                else
                    return false;
                
            }
            function valida(e)
            {
                var keylet;
                if(window.event)
                    keylet = e.keyCode; /*IE*/
                else
                    if(e.which)
                        keylet = e.which; //Netscape firefox opera
                
                if((keylet>=97&&keylet<=122)||keylet===8 ||keylet===32 || keylet===239 ||keylet>=65&&keylet<=90 ||keylet>=160&&keylet<=163)
                  return true;
                else
                  return false;
            }
                    
                </script>
                <script type="text/javascript">
        
            
            function makeid()
{
    var texto = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 10; i++ )
        texto += possible.charAt(Math.floor(Math.random() * possible.length));
document.getElementById("Codigo").value = texto;


    return texto;
}
</script>
    </head>
    
    <body oncopy="return false" onload="makeid()" oncut="return false" onpaste="return false" class="landing">
        <div>
            <div>
            <header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="Usuario.jsp">Inicio</a></li>
							<li>
								<a href="perfil.jsp">Perfil</a>
								
							</li>
							<li><a href="busqueda.html">Buscar</a></li>
                                                        	<li><a href="faq.jsp">Ayuda</a></li>
							<li>
                                                          
                                                             
                                                         
                                                          <li><a href="quejas21.jsp">Queja o sugerencia</a></li>
                                                          <li><span class="button disabled"><a href="cerrar">
                                                             Salir  
                                                             </a></span> </li>
						</ul>
					</nav>
				</header>

            <br><br><br>
		
            <form method="post" action="altaad" class="container 50%">
            <div align="center"><h2><b>Registro</b></h2>
                   
                    <div><h3>Usuario</h3>
                        <div class="6u 12u(xsmall)">
                            <
                            <input type="text" name="NombreEmpleado" id="NombreEmpleado" value="" placeholder="Nombre" onKeyPress="return valida(event)" required/><br>
                            <input type="text" name="edad" id="edad" value="" placeholder="Edad"  onKeyPress="return validacp(event)" maxlength="2" required/><br>
                            
                            <div><h4>Sexo</h4>
                            <div class="4u 12u$(medium)">
                                <input type="radio" id="priority-low" name="sexo" value="Masculino" checked>
				<label for="priority-low">Masculino</label>
                            </div>
                            <div class="4u 12u$(medium)">
				<input type="radio" id="priority-normal" name="sexo" value="Femenino">
				<label for="priority-normal">Femenino</label>
                            </div>
                            
											
										
                            <input type="email" name="correo" id="correo" value="" placeholder="Correo" required/><br>
                            <input type="text" name="telefono" id="telefono" value="" placeholder="Tel&edot;fono" onKeyPress="return validacp(event)"  maxlength="8" required/><br>
                            
 
                            <input type="password" name="contrasenia" id="contrasenia" value="" placeholder="Contrase&ntilde;a" required/><br>
                <input type="text" name="Codigo" id="Codigo" value="" style="visibility:hidden"  readonly>
                            <input class="button disabled" type="submit" value="Registrar">
                        </div>
                    </div>
                   
            </div>
            </form>
                        <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
                        
                        
                          
    </body>
</html>