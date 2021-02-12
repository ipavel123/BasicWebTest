<?php

include_once 'interface.php';

class a
{
	const TYPE = 'A Class';

	public function getType()
	{
		echo '<p>This is class: ' . get_class($this) . ', type ' . $this::TYPE . '</p>';
	}

}

class b extends a
{
	const TYPE = 'B Class';

}

$a = new a();
$b = new b();
$a->getType();
$b->getType();
