<?php
require '../functions/autoload_class.php';
require '../functions/blog/page.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Noticias VVDS</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/blog/estilo.css" rel="stylesheet">
  </head>

  <body>

  <header>
        <p><img src="../img/logo-noticiasvvds.png" alt=""></p>
    </header>
    
  <?php include 'navbar.php'; ?>
    <div class="container">

      <div class="row">

        <div class="col-sm-12 blog-main">
          <?php echo getArticle(getId());?>
        </div>

      </div>

    </div>
    
    
  </body>
</html>
