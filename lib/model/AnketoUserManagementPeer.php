<?php

class AnketoUserManagementPeer extends BaseAnketoUserManagementPeer {
	public static function userLogin($user, $pwd) {
		$con = Propel::getConnection();
		$sql = "select count(*) from anketo_user_management where anketo_user_management.user_name = '$user' and anketo_user_management.user_pwd = '$pwd' ";
		$result = mysql_query($sql,$con);
//		var_dump($result);
		return $result;
	}
	public static function insertUser_information($user, $pwd) {
		$con = Propel::getConnection();
		$current_time = date('Y/m/d h:i:s', time());
		$sql = "insert into anketo_user_management (user_name,user_pwd,created_at) values ($user,$pwd,$current_time)";
		$result = mysql_query($sql,$con);
		return $result;
	}
}
