<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ecommerce Website</title>
    <link rel="icon" href="<?php SITEURL; ?>images/linyas.jpg" type="image/gif" sizes="16x16">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>





<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container w-90">
    <a href="index.php">linyas</a>
<img src="images/linyas.jpg" alt="shop Logo" style="width: 40px;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo SITEURL; ?>index.php"> الصفحة الرئيسية <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo SITEURL; ?>categories.php"> Categories </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo SITEURL; ?>foods.php"> المنتجات </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo SITEURL; ?>contact.php"> اتصل بنا </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo SITEURL; ?>admin/login.php"> الادارة </a>
      </li>
    </ul>
  </div>
  </div>
</nav>






    <!-- Navbar Section Starts Here -->
</body>
</html>