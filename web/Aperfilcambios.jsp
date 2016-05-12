<%-- 
    Document   : Aperfilcambios
    Created on : 6/04/2016, 05:03:41 PM
    Author     : coro
--%>

<html>
    <head>
        <title>Saving Your Car</title>
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


        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    
                      <%
String nom = (String)session.getAttribute("usu");
String compa = (String)session.getAttribute("compa");
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


 
String noma = (String)session.getAttribute("NombreEmpleado");

String edad = (String)session.getAttribute("edad");
String sexo = (String)session.getAttribute("sexo");
String correo = (String)session.getAttribute("correo");
String telefono = (String)session.getAttribute("telefono");
String contra =(String)session.getAttribute("contra");
String idusu =(String)session.getAttribute("idusu");
%>
   <body style="background-image:images/car.jpg ">
         <div>
            <header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="principal.jsp">Inicio</a></li>
							<li>
								<a href="Aperfil.jsp">Perfil</a>
								
							</li>
							<li><a href="Aconsulta.jsp">Buscar</a></li>
							<li>
                                                          
                                                            <form method="post" action="cerrar">
                                                                
                                                           <input type="submit" value= "logout" >     
                                                            </form>    
                                                         
                                               
						</ul>
					</nav>
				</header>
            <br><br><br>
		
                    <div align="center"><h2>Edite la informacion que desea del Administrador</h2></div>
                    <br>
<br>
<form method="post" action="camper">
    Id usuario <input type="text" value="<%=idusu%>" name="idusu" required readonly>
    <br><br>
    Nombre empleado <input type="text" value="<%=noma%>" onKeyPress="return valida(event)" name="nome" required>
    <br><br>
    Compañia     <input type="text" value="<%=compa%>" name="compa" required readonly>
    <br><br>
    Edad  <input type="text" value="<%=edad%>" onKeyPress="return validacp(event)" name="edad" maxlength="2" required >
    <br><br>
    Sexo <input type="text" value="<%=sexo%>" name="sex" required readonly>
    <br><br>
    Correo <input type="text" value="<%=correo%>" name="correo" required>
    <br><br>
    telefono <input type="text" value="<%=telefono%>" onKeyPress="return validacp(event)" name="tel" required>
    <br><br>
    Contraseña <input type="password" value="<%=contra%>" name="con" required> 
    <br><br>
    
    <br>
    <br>
   
    
    <h6>Los cambios se aplicaran la proxima ves que inicies sesion</h6>
    <input type="submit" value="cambiar">
    
</form>

















        </div>
        
    </body>
</html>
