<?php use_stylesheet('anketo.css') ?>
<script type="text/javascript" src="../../../../jqplot/jquery.min.js"></script>
<script type="text/javascript" src="../../../../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../../../../jqplot/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="../../../../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="../../../../jqplot/plugins/jqplot.pointLabels.min.js"></script>
<script type="text/javascript" src="../../../../js/count.js"></script>
<link rel="stylesheet" type="text/css" hrf="../../../../jqplot/jquery.jqplot.min.css" />

<table border="1" style="width: 1000px;overflow-x: auto;overflow-y: scroll;display: -webkit-box;height:400px">
<thead>
<tr>
<th colspan="18">部门周会</th>
<th colspan="34">公共事务</th>
<th colspan="22">活动组织</th>
</tr>
<tr>
<?php foreach ($info1 as $key=> $a):?>
<th colspan="2"><?php echo $a['detail_name'];?></th>	
<?php endforeach;?>
</tr>
</thead>
<tbody>
<tr>
<?php 
$info3 = array();
foreach ($info2 as $value) {
	$info3[$value['created_at']][] = $value;
}
?>
<?php foreach ($info3 as $k=>$value){?>
<tr>
<?php foreach ($value as $k=>$b){?>
<td><?php echo $b['common_name'];?></td>
<td><?php echo $b['comments'];?></td>
<?php }?>
</tr>
<?php }?>
</tbody>
</table>
<br>
<label>请选择：</label>
<select id="infom" name="infom" style="width:10%">
<option value="">-select-</option>
<option value="部门周会">部门周会</option>
<option value="公共事务">公共事务</option>
<option value="活动组织">活动组织</option>
</select>
<?php echo '<select id="info" name="info" onchange="show()" style="width:80%">';
      echo '<option value="">-select-</option>';
?>

<?php echo "</select>";?>
<br>
<br>
<label>相应建议：</label>
<textarea  id = "area" style= "display:none; width: 95%" readonly = "readonly"></textarea>
<textarea id = "area1" style= "display:none"></textarea>
<br>
<div id="chart1" ></div>