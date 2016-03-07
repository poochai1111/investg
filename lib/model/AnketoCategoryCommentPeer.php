<?php



class AnketoCategoryCommentPeer extends BaseAnketoCategoryCommentPeer {
	public static function insertCategoryComment($anketoKey, $comment){
    $con = Propel::getConnection();
	$count = count($comment);
	$current_time = date('Y/m/d h:i:s', time());
	$sql = "INSERT INTO anketo_category_comment (";
	$sql .= " category_id";
	$sql .= ", anketo_key";
	$sql .= ", category_comment";
	$sql .= ", created_at )";
	$sql .= " VALUES ". implode(',',array_fill(0, $count, '(?, ?, ?, ?)'));
	$stmt = $con->prepare($sql);
	$params = array();
	foreach($comment as $id =>$value)
	{
		$params[] = $value['categoryID'];
		$params[] = $anketoKey;
		$params[] = $value['categoryComment'];
		$params[] = $current_time;		
	}
	$stmt->execute($params);
	}
}
