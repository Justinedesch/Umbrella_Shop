<?php
//$product['weight'])
$shipping_costs = 0;
function fdp($total_weight, $total)
{

    if ($total_weight <= 500) {

        return 5;

    } elseif ($total_weight <= 2000) {


        return $total * ((1 + 10) / 100);


    } else {


        return 0;
    }
}




