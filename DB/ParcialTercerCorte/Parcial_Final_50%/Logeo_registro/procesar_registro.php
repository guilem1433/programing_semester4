<?php

$conexion = new mysqli("localhost", "root", "", "banco");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$pass = $_POST['pass'];
$pass2 = $_POST['pass2'];

if ($pass !== $pass2) {
    echo "<script>
        alert('Error: Las contraseñas no coinciden.');
        window.location.href = 'registro.php';
    </script>";
    exit;
}

$dominio = explode("@", $correo)[1];

$tabla = "";
$redirect = "";

switch ($dominio) {
    case "gerente.com":
        $tabla = "gerente";
        $redirect = "http://localhost/Parcial_Final_50%25/Gerente_General/gerente_general.html";
        break;

    case "admin.com":
        $tabla = "administrador";
        $redirect = "http://localhost/Parcial_Final_50%25/AdministradorDelBanco/admin_banco.html";
        break;

    case "analista.com":
        $tabla = "analista";
        $redirect = "http://localhost/Parcial_Final_50%25/Analista_Riesgo/analista_riesgo.html";
        break;

    case "asesor.com":
        $tabla = "asesor";
        $redirect = "http://localhost/Parcial_Final_50%25/Asesor_Comercial/index.html";
        break;

    case "cajero.com":
        $tabla = "cajero";
        $redirect = "http://localhost/Parcial_Final_50%25/Cajero/cajero.html";
        break;

    case "cliente.com":
        $tabla = "cliente";
        $redirect = "http://localhost/Parcial_Final_50%25/Cliente/index.html";
        break;

    case "soporte.com":
        $tabla = "soporte";
        $redirect = "http://localhost/Parcial_Final_50%25/Soporte_Tecnico/soporte_tecnico.html";
        break;

    default:
        echo "<script>
            alert('Cargo no reconocido.');
            window.location.href = 'index_login.html';
        </script>";
        exit;
}

$consulta = $conexion->prepare("SELECT id FROM $tabla WHERE correo = ?");
$consulta->bind_param("s", $correo);
$consulta->execute();
$consulta->store_result();

if ($consulta->num_rows > 0) {
    echo "<script>
        alert('Este correo ya está registrado.');
        window.location.href = 'registro.html';
    </script>";
    exit;
}

$insertar = $conexion->prepare("INSERT INTO $tabla (nombre, correo, contraseña, con_confirmacion) VALUES (?, ?, ?, ?)");
$insertar->bind_param("ssss", $nombre, $correo, $pass, $pass2);

$insertar_registro = $conexion->prepare("INSERT INTO registro (nombre, correo, contraseña, con_confirmacion) VALUES (?, ?, ?, ?)");
$insertar_registro->bind_param("ssss", $nombre, $correo, $pass, $pass2);

if ($insertar->execute() && $insertar_registro->execute()) {

    echo "<script>
        alert('Registro exitoso');
        window.location.href = '$redirect';
    </script>";

} else {

    echo "<script>
        alert('Error al registrar. Inténtalo más tarde.');
        window.location.href = 'registro.html';
    </script>";
}

$conexion->close();

?>
