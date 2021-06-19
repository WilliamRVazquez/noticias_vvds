<?php 
require_once $_SERVER['DOCUMENT_ROOT'] . '/noticias_vvds/config/config.php';
spl_autoload_register(function ($class) {
  if(in_array($class, NORMAL_CLASS))
    return require DIR . "/noticias_vvds/class/$class/$class.class.php";
  elseif (strpos($class, 'Message') !== false)
    require DIR . "/noticias_vvds/class/Message/$class.class.php";
  else
    require DIR . "/noticias_vvds/class/Article/$class.class.php";
});
