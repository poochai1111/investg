<?php

class AnketoAllInformation extends BaseAnketoAllInformation
{
    function array_unique_fb($array){
	foreach ($array as $v){
		$v=join(',',$v);  //降维,也可以用implode,将一维数组转换为用逗号连接的字符串
		$temp[]=$v;
	}
	$temp=array_unique($temp);    //去掉重复的字符串,也就是重复的一维数组
	foreach ($temp as $k => $v){
		$temp[$k]=explode(',',$v);   //再将拆开的数组重新组装
	}
	return $temp;
}

}
