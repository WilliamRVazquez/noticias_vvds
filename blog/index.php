<?php 
require '../functions/autoload_class.php';
require '../functions/blog/inicio.php';
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

      <div class="page-header master">
        <h1 class="master">Bienvenido a Noticias VVDS</h1>
      </div>
      <div class="row">

        <div class="col-sm-8 blog-main">
            <?php echo getArticles();?>

        </div><!-- /.blog-main -->
        <?php include_once('aside.php') ?>
      </div><!-- /.row -->

    </div><!-- /.container -->
    <?php include_once('footer.php') ?>
    
  </body>
</html>
