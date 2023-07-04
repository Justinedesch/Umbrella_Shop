<?php 
    require_once "functions/cart.php";
    
    $cartCount = getCartItems();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title><?php echo $title ?> Umbrella Shop</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@400;700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header class="header">
        <img src="img/The_Umbrella_Corporation_Logo.webp" width="140"
        <a href="index.php"></a>
        <nav>
            <a href="index.php">Products</a>
            <a href="cart.php">My Cart (<?php echo $cartCount ?> items)</a>
        </nav>
    </header>

    <div class="page">