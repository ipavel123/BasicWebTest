<?php

function dd($out, $is_die = false)
{
	echo "<pre class='debag-dd'>";
	var_dump($out);
	echo '</pre>';

	if ($is_die)
	{
		die();
	}
}
