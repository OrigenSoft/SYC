<%-- 
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
  


        <meta charset="utf-8" />
      


		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
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
									<li><a href="registro1.html">Registrar</a></li>
                                                                        <li><a href="Aconsulta.jsp">Buscar</a></li>
								</ul>
							</li>
                                                        
                                                        <li>
                                                      
									<a>Codigo</a>
                                                                        <ul>
                                                                            <li> <a href="codigoalt.jsp">Alta</a> </li>
                                                                            <li> <a href="codigocon.jsp">Consulta</a>  </li>
                                                                        </ul>
                                                        </li>
							
							<li><a href="Aperfil.jsp">Perfil</a></li>
                                                        <li><a href="facad.jsp">Ayuda</a></li>
							<li>
                                                              <form method="post" action="cerrar">
                                                                
                                                           <input type="submit" value= "logout" >     
                                                            </form> </span></li>
                                                        <li><a href="quejas2.jsp">Queja o sugerencia</a></li>
						</ul>
					</nav>
				</header>
            <br>
            <br>
    <br>
    <h2>Preguntas Frecuentes</h2>
    <br>
    <br>
    <h1>   
<p onclick="ver('uno')">¿Como registro un siniestro?</p>
<p class="oculto" id="uno">Dirijase al menu superior y ponga el raton sobre siniestro y se desplegaran 2 opciones buscra y registrar, seleccione registrar y se le llevara a una pagina para que llene los datos del siniestro  </p>
<p onclick="ver('dos')">¿Como busco un siniestro?</p>
<p class="oculto" id="dos">Dirijase al menu superior y ponga el raton sobre siniestro y se desplegaran 2 opciones buscra y registrar, seleccione buscar despes debera teclear el id del siniestro y de clic en buscar, esto le desplegara los datos del siniestro</p>
<p onclick="ver('tres')">¿Como cambio los datos de un  siniestro?</p>
<p class="oculto" id="tres">Dirijase al menu superior y ponga el raton sobre siniestro y se desplegaran 2 opciones buscra y registrar, seleccione buscar despes debera teclear el id del siniestro y de clic en buscar, esto le desplegara los datos del 
del siniestro y  al final de estos habra un boton que dice editar de clic y podra cambiar ciertos campos del siniestro, relizados los cambios de clic en el boton de bajo y listo</p>
<p onclick="ver('cuatro')">¿Como doy de alta un codigo?</p>
<p class="oculto" id="cuatro">En el menu superior coloque el raton sobre la opcion de codigo y eleija la opcion alta esto lo llevara a una pagina donde llenara unos datos y pondra su correo y contraseña para poder mandar un email</p>
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
</html> 