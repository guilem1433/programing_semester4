<?php


$conexion = new mysqli("localhost", "root", "", "banco");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}


$correo = $_POST['correo'];
$pass = $_POST['pass'];


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
            window.location.href = 'registro.html';
        </script>";
        exit;
}



$consulta = $conexion->prepare("SELECT contraseña FROM $tabla WHERE correo = ?");
$consulta->bind_param("s", $correo);
$consulta->execute();
$consulta->store_result();

if ($consulta->num_rows === 0) {
    echo "<script>
        alert('Correo no registrado.');
        window.location.href = 'registro.html';
    </script>";
    exit;
}


$consulta->bind_result($pass_db);
$consulta->fetch();


if ($pass !== $pass_db) {
    echo "<script>
        alert('Contraseña incorrecta.');
        window.location.href = 'registro.html';
    </script>";
    exit;
}


echo "<script>
    alert('Inicio de sesión exitoso');
    window.location.href = '$redirect';
</script>";

$conexion->close();

?>
