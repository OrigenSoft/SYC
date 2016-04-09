<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <html>
     
<style type="text/css">
.oculto {display:none}
</style>

<head>
    <title>Saving Your Car</title>
           



		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
             
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
</head>
<body class="landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="index.html">Inicio</a></li>
                                                        <li><span class="button disabled"><a href="#two">Iniciar sesi&oacute;n</a></span></li>
                                                        <li><span class="button disabled"><a href=registro.html>Registrarse</a></span></li>
						</ul>
					</nav>
				</header>
		
				
                </div>
    <br>
    <br>
    <h2>Preguntas Frecuentes</h2>
    <br>
    <br>
    <h1>   
<p onclick="ver('uno')">¿Como inicio sesion?</p>
<p class="oculto" id="uno">tiene que dar clic en iniciar sesion y se le llevara a una pagina donde colocara su usuario y contraseña</p>
<p onclick="ver('dos')">¿Como me registro?</p>
<p class="oculto" id="dos">En la pagina principal tiene que dar clic al boton de registro y se le llevara a una pagina donde se le pediran unos datos y un codigo que el administrador le debe haber dado por que sin este no podra realizarlo</p>
<p onclick="ver('tres')">¿Que hago si olvide mi contraseña?</p>
<p class="oculto" id="tres">Dirijase a la parte de iniciar sesion y despespues de le clic al enlzace que dice olvide mi contraseña, esto lo llevara a una pagina que le pedira su usuario para mandar a su correo la nueva contraseña con la que podra continuar </p>
<p onclick="ver('cuatro')">Título 2</p>
<p class="oculto" id="cuatro">Texto dos</p>
<p onclick="ver('cinco')">Título 2</p>
<p class="oculto" id="cinco">Texto dos</p>
<p onclick="ver('seis')">Título 2</p>
<p class="oculto" id="seis">Texto dos</p>
<p onclick="ver('siete')">Título 2</p>
<p class="oculto" id="siete">Texto dos</p>
    </h1>
</body>
</html> 