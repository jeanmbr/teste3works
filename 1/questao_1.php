<?php
function calcularTotalComDesconto(array $precos, float $desconto): float {
    $valortotal = 0;
    foreach ($precos as $preco) {
        $valortotal += $preco - ($preco * $desconto);
    }
    return $valortotal;
}

?>
