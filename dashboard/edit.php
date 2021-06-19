<?php 
require 'header.php';
require 'navbar.php';
?>
    <div class="container-fluid">
      <div class="row">
        <?php require 'sidebar.php'; ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h2 class="sub-header">Editar Post</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-7 col-md-offset-2 main">
          <form enctype="multipart/form-data" action="../functions/article/update.php" method="POST">
            <div class="form-group">
              <label for="title">Titulo</label>
              <input type="text" name="title" class="form-control" id="title" placeholder="New title">
            </div>
            <label for="categorie">Categoria</label>
            <select name="categorie_id" class="form-control" id="categorie">
              <option value="0">Elige una categoría</option>
            </select>
            <label for="content">Contentenido</label>
            <textarea  name="content" class="form-control" rows="3" id="content"></textarea>
            <div class="form-group">
              <label for="img">File input</label>
              <input name="user-file" type="file" id="img">
            </div>
            <input type="hidden" name="id_article" id="id_article">
            <button name="submit" type="submit" class="btn btn-default">Subir</button>
          </form>
        </div>
      </div>
    </div>
<?php require 'footer.php'; ?>