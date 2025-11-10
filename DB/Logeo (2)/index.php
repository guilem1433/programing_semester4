<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regitro</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<form method="post">
    <h2>Bienvenido</h2>
    <p>Llena los campos con tus datos</p>

    <div class="input-wrapper">
        <input type="text" name="name" placeholder="Nombre">
        <img class="input-icon" src="imagenes/name.svg">
    </div>

    <div class="input-wrapper">
        <input type="email" name="email" placeholder="Email">
        <img class="input-icon" src="imagenes/email.svg">
    </div>

    <div class="input-wrapper">
        <input type="text" name="direction" placeholder="Dirección">
        <img class="input-icon" src="imagenes/direction.svg">
    </div>

    <div class="input-wrapper">
        <input type="tel" name="phone" placeholder="Teléfono">
        <img class="input-icon" src="imagenes/phone.svg">
    </div>

    <div class="input-wrapper">
        <input type="password" name="password" placeholder="Contraseña">
        <img class="input-icon" src="imagenes/password.svg">
    </div><br>

    <input type="submit" class="btn" name="register" value="Enviar">
</form>


<div class="mensaje-contenedor">
    <?php include("registrar.php"); ?>
</div>

    
    </body>

</html>