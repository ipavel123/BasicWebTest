<?php

include_once 'interface.php';

$tree_common = [
	[
		'id' => '8',
		'parent_id' => '6',
	],
	[
		'id' => '2',
		'parent_id' => '1',
	],
	[
		'id' => '3',
		'parent_id' => '1',
	],
	[
		'id' => '4',
		'parent_id' => '1',
	],
	[
		'id' => '5',
		'parent_id' => '2',
	],
	[
		'id' => '1',
		'parent_id' => '0',
	],
	[
		'id' => '6',
		'parent_id' => '2',
	],
	[
		'id' => '7',
		'parent_id' => '3',
	],
];

// реализация задачи без рекурсии
function withoutRecursive($tree)
{
	$result = [];

	foreach ($tree as $valTree)
	{
		$search = false;

		foreach ($result as $k => $resValue)
		{
			if (preg_match("/\.{$valTree['parent_id']}$/i", $resValue))
			{
				$search = [
					'key' => $k,
					'value' => $valTree['id']
				];
			}
		}
		if ($search)
		{
			$result[] = $result[$search['key']] . '.' . $search['value'];
		} else
		{
			if ($valTree['parent_id'] === '0')
			{
				$result[] = $valTree['id'];
			} else
			{
				$result[] = $valTree['parent_id'] . '.' . $valTree['id'];
			}
		}
	}
	$result_out = $result;

	foreach ($result_out as $k => $resValueOut)
	{
		$front_id = substr($resValueOut, 0, 1);

		foreach ($result as $resValue)
		{
			if (preg_match("/\.{$front_id}$/i", $resValue))
			{
				$result_out[$k] = $resValue . substr($resValueOut, 1);
			}
		}
	}
	sort($result_out);

	return $result_out;
}

// реализация задачи с рекурсией
function withRecursive($tree)
{
	$result_out = [];

	function searchParent($arSearch, $current)
	{
		$str = $current['id'];

		foreach ($arSearch as $valSearch)
		{
			if ($current['parent_id'] === $valSearch['id'])
			{
				$str = searchParent($arSearch, $valSearch) . '.' . $str;
			}
		}
		return $str;
	}

	foreach ($tree as $k => $valTree)
	{
		$result_out[$k] = searchParent($tree, $valTree);
	}
	sort($result_out);

	return $result_out;
}

echo('Реализация задачи без рекурсии:');
dd(withoutRecursive($tree_common));
echo('Реализация задачи c рекурсией:');
dd(withRecursive($tree_common));


