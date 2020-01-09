<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">𝓑𝓸𝓞𝓚𝓩𝓲𝓔</a>
        </div>

        <!--/.navbar-collapse -->
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">

              <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; Publisher</a></li>

              <li><a href="books.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Books</a></li>

              <li><a href="contact.php"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; Contact</a></li>

              <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; My Cart</a></li>
            </ul>
        </div>
      </div>
    </nav>
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    <div class="jumbotron" style="color: #fce1e1; background-image: url('bootstrap/img/bg01.jpg');; background-repeat: no-repeat; background-size: 100% 100%;">
      <div class="container">
        <h1>ຟēl¢໐๓ē t໐ <span style="color:#76a1e3;">𝓑𝓸𝓞𝓚𝓩𝓲𝓔</span></h1>
        <p class="lead" style="font-size: 40px; font-style: italic;">Yₒᵤᵣ ₒₙₑ ₛₜₒₚ 𝕂𝕟𝕠𝕨𝕝𝕖𝕕𝕘𝕖 ₛₜₒᵣₑ</p>
        <p>𝓣𝓱𝓮 𝓭𝓮𝓼𝓽𝓲𝓷𝓪𝓽𝓲𝓸𝓷 𝓯𝓸𝓻 𝔂𝓸𝓾𝓻 𝓬𝓱𝓸𝓲𝓬𝓮 𝓸𝓯 𝓫𝓸𝓸𝓴𝓼</p>
      </div>
    </div>
    <?php } ?>
    <div class="container" id="main">
  