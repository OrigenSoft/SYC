<%-- 
    Document   : Control
    Created on : 12/05/2016, 09:28:31 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Saving Your Car</title>
  
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

        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    
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
   <body style="background-image:images/car.jpg ">
        <div>
           <header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="principal.jsp">Inicio</a></li>
							<li>
                                                            <a>Siniestro</a>
								<ul>
									<li><a href="registro1.jsp">Registrar</a></li>
                                                                        <li><a href="Aconsulta.jsp">Buscar</a></li>
								</ul>
							</li>
                                                       
							<li><a href="Aperfil.jsp">Perfil</a></li>
							<li>
                                                              <form method="post" action="cerrar">
                                                                
                                                           <input type="submit" value= "logout" >     
                                                            </form> </span></li>
						</ul>
					</nav>
				</header>
            <br><br><br>
		<center>
                    <h2>El resultado de tu busqueda es </h2>
                    
                    
                    <%
String Ids = (String)session.getAttribute("id");
String compania = (String)session.getAttribute("compania");
String correoU = (String)session.getAttribute("mail");
String nombre = (String)session.getAttribute("Nombre");
String edad = (String)session.getAttribute("age");
String sexo = (String)session.getAttribute("sex");
String telefono = (String)session.getAttribute("phone");
String cod = (String)session.getAttribute("code");
String tipos = (String)session.getAttribute("type");







%>


<h1>Datos del Usuario</h1>
<table>
    <tr>
        <td><font size="4"><b>ID </b></td>
        <td><%=Ids%> </td></tr>
    <tr>
        <td><font size="4"><b>Nombre</b></td>
        <td><%=nombre%> </td></tr>
    <tr>
        <td><font size="4"><b>correo</b></td>
        <td><%=correoU%></td></tr>
    <tr>
        <td><font size="4"><b>Compañia</b></td>
        <td><%=compania%></td></tr>
    <tr>
        <td><font size="4"><b>edad</b></td>
        <td><%=edad%></td></tr>
    <tr>
        <td><font size="4"><b>Sexo</b></td>
        <td><%=sexo%></td></tr>
    <tr>
        <td><font size="4"><b>Telefono</b></td>
        <td><%=telefono%></td></tr>
    <tr>
        <td><font size="4"><b>Codigo</b></td>
        <td><%=cod%></td></tr>
    <tr>
        <td><font size="4"><b>tipo</b></td>
        <td><%=tipos%></td></tr>

</table>
                </center>
        </div>
        <form method="post" action="Despidete_de_tu_cuenta">
             <input type="text" name="Codigo" id="Codigo" value="<%=tipos%>" style="visibility:hidden" readonly>
            <input type="submit" value="Darle ban al men">
        </form>
   </body>
</html>