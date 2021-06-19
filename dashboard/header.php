<?php 
require_once $_SERVER['DOCUMENT_ROOT'] . '/noticias_vvds' . '/config/config.php';
spl_autoload_register(function ($class) {
  include "../class/$class/$class.class.php";
});

$session = new Session();
if (! $session->validateSession('id')) {
  header('location: login/login.php?message=Debes iniciar sesión&type=warningMessage');
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard | Noticias VVDS</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min2.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard/dashboard2.css" rel="stylesheet">

  </head>

  <body>