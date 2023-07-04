<?php 

function getProducts() {
    return [
        "Adravil" => [
            "title" => "Adravil",
            "price" => 45000,
            "description" => "Quick & Fast Relief, by Dr.BART",
            "image" => "img/Adravil.JPG",
            "stock" => 0,
        ],
        "AquaCure" => [
            "title" => "AquaCure",
            "price" => 100000,
            "description" => "Escape to Ecstasy - IN STORE NOW",
            "image" => "img/AquaCure.JPG",
            "stock" => 50,
        ],
        "Safsprin" => [
            "title" => "Safsprin",
            "price" => 240000,
            "description" => "The Common Cure - IN STORE NOW",
            "image" => "img/Safsprin.JPG",
            "stock" => 50,
        ]
    ];
}

function getProduct($key)
{
    $products = getProducts();

    if ( !isset($products[$key]) ) {
        throw new Exception("Le produit $key n'existe pas");
    }

    return $products[$key];
}