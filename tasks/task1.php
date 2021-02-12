<?php

include_once 'interface.php';

$a = [1, 2, [[9, 10, [11]], 7, 8], 3, 5];

function multiplicationByTwo(&$value)
{
	$value *= 2;
}

array_walk_recursive($a, 'multiplicationByTwo');

dd($a);
