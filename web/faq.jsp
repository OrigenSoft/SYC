<%-- 
    

--%>

<html>
      <style type="text/css">
.oculto {display:none}
</style>
    <head>
          <script type="text/javascript">
var visto = null;
function ver(num) {
  obj = document.getElementById(num);
  obj.style.display = (obj==visto) ? 'none' : 'block';
  if (visto != null)
    visto.style.display = 'none';
  visto = (obj==visto) ? null : obj;
}
</script>
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
String nom = (String)session.getAttribute("NombreEmpleado");
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
%>
    <body style="background-image:images/car.jpg ">
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
							<li>
                                                          
                                                            <form method="post" action="cerrar">
                                                                
                                                           <input type="submit" value= "logout" >     
                                                            </form>    
                                                         
                                                          <li><a href="quejas.jsp">Queja o sugerencia</a></li>
						</ul>
					</nav>
				</header>
            <br><br><br>
            <h2>Preguntas Frecuentes</h2>
    <br>
    <br>
    <h1>   
<p onclick="ver('uno')">¿Como busco un siniestro?</p>
<p class="oculto" id="uno">Dirijase al menu superior y seleccione buscar se le desplgara otra pagina donde tecleara el id del siniestro y posteriormente dara enter para ver la respuesta  </p>
<p onclick="ver('dos')">¿Como cierro mi sesion?</p>
<p class="oculto" id="dos">Dirijase al menu superior y de clic en el boton logout</p>
<p onclick="ver('tres')">¿Como descargo un arhivo de un siniestro?</p>
<p class="oculto" id="tres">despues de realizar la consulta al final de la pagina hay un enlace que dice "ver informe" le dara clic y le mostrara el informe posteriormente debe darle al boton de descragar  </p>
<p onclick="ver('cinco')">¿Como cambiar mi contraseña?</p>
<p class="oculto" id="cinco">En el menu superior de clic en perfil esto lo llevara a una pagina donde se mostraran algunos de sus datos al final esta un boton que dice editar de clic y podra cambiar muchos de sus datos entre ellos su contraseña</p>
<p onclick="ver('seis')">Título 2</p>
<p class="oculto" id="seis">Texto dos</p>
<p onclick="ver('siete')">Título 2</p>
<p class="oculto" id="siete">Texto dos</p>
    </h1>
</body>
 <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>