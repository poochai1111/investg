<?php use_stylesheet('anketo.css') ?>

<link rel="stylesheet" type="text/css" href="..\..\..\..\web\css\bootstrap.min.css" />
<script src="..\..\..\..\floatmenu\jquery-1.10.2.min.js"></script>
<script src="..\..\..\..\floatmenu\bootstrap\js\bootstrap.min.js"></script>
<table class="table table-hover" >
<tr>
<th width="">用户</th>
<th width="20%">工龄</th>
<th width="">性别</th>
<th width="">类ID</th>
<th width="20%">类名</th>
<th width="">问题ID</th>
<th width="40%">问题</th>
<th width="20%">答案</th>
<th>建议</th>
<th>类建议</th>
</tr>
<?php foreach ($info as $one) :  ?> 

	<tr>
		<td><?php echo $one['user_information'];?></td>
		<td width="20%"><?php echo $one['work_year'];?></td>
		<td><?php echo $one['sex'];?></td>
		<td><?php echo $one['category_id'];?></td>
		<td width="20%"><?php echo $one['category_name'];?></td>
		<td><?php echo $one['detail_id'];?></td>
		<td width="40%"><?php echo $one['detail_name'];?></td>
		<td width="20%"><?php echo $one['common_name'];?></td>
		<td><?php echo $one['comments'];?></td>
		<td><?php echo $one['category_comment'];?></td>
	</tr>
<?php endforeach ?>
</table>