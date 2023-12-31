<?php 
    session_start();
    
    require_once "functions/prices.php";
    require_once "functions/products.php";
    require_once "functions/alert.php";

    $products = getProducts();

    // On commence l'affichage du HTML
    $title = "Boutique";
    require_once "templates/header.php";
?>
        
<h1>Our Products</h1>

<?php if (count($products) > 0): ?>
    <div class="shop">
        <?php foreach($products as $productKey => $product): ?>
            <div class="product">
                <img src="<?= $product['image'] ?>" alt="<?php echo $product["title"] ?>">
                <h2><?php echo $product['title'] ?></h2>
                <p><?php echo formatPrice(getPriceWithTax($product['price'])) ?></p>
                <p><?php echo $product['description'] ?></p>
                
                <form action="cart.php" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="product" value="<?php echo $productKey ?>">
                    <input type="number" name="quantity" value="1" min="1" max="<?php echo $product['stock']; ?>">
                    
                    <?php if ($product["stock"] > 0): ?>
                        <button>Add to cart</button>
                    <?php else: ?>
                        <button disabled>Out of Stock</button>
                    <?php endif ?>
                </form>
            </div>
        <?php endforeach; ?>
    </div> <!-- fin shop -->

<?php else: ?>
    <p class="not-found">Aucun produit disponible</p>
<?php endif; ?>

<?php include "templates/footer.php" ?>