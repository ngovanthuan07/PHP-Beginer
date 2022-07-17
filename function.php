<?php 
function createMenuTree(&$menuList, $parent_id){
	$menuTree = array();
	foreach ($menuList as $key => $menu) {
		if($menu['parent_id'] == $parent_id){
			$children = createMenuTree($menuList, $menu['id']);
			if($children){
				$menu['children'] = $children;
			}
			$menuTree[] = $menu;
			unset($menuList[$key]);
		}
	}
	return $menuTree;
}

function showMenuSelectBox($list, $num){
	$num++;
	foreach ($list as $item) {
		echo "<option>".str_repeat("---", $num - 1).$item['name']."</option>";
		if(!empty($item['children'])){
			showMenuSelectBox($item['children'],$num);
		}
	}
}
?>