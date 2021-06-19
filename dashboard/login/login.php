<?php
require '../../functions/autoload_class.php';

$message = isset($_GET['message']) && isset($_GET['type']) ? MessageFactory::createMessage($_GET['type']) : false;

$message_out = $message ? $message->getMessage($_GET['message']) :''; 

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/sigin/login.css">
    <title>Login | Noticias VVDS</title>
</head>
<body>
<?php echo $message_out; ?>
    <div class="login-box">
        <img class="avatar" src="../../img/logo.jpg" alt="user-logo">

        <h1>Login</h1>
        <form method="post" action="validar_login.php">
        <!--Correo-->
            <label for="username">Correo</label>
            <input type="Email" name="email" placeholder="Introduce Correo">
        
            <!--Contraseña-->
            <label for="password">Contraseña</label>
            <input type="password" name="password" placeholder="Introduce Contraseña">

            <input type="submit" name="submit" value="Entrar">
        </form>
    </div>
</body>
</html>