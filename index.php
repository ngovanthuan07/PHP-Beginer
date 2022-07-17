<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
	<title>Hướng dẫn tạo menu Đa Cấp (giải thuật đệ quy) trong PHP</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
		<h1>Menu đa cấp</h1>
		<?php
		include 'connect_db.php';
		include 'function.php';
		$result = mysqli_query($con, "SELECT * FROM `menu` ORDER BY `menu`.`position` ASC");
		$menuList = mysqli_fetch_all($result,MYSQLI_ASSOC);
		$menuTree = createMenuTree($menuList, 0);
		?>
		<select name="parent">
			<option value="">Lựa chọn</option>
			<?php if(!empty($menuTree)){
				showMenuSelectBox($menuTree,0);
			} ?>
		</select>
	</div>
</body>
</html>
