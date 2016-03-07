<?php

class AnketoAllInformationPeer extends BaseAnketoAllInformationPeer {
	public static function insertAllInformation($anketoKey, $api_authority_info) {
		$con = Propel::getConnection();
		$current_time = date('Y/m/d h:i:s', time()); // Get current time
//		$ip = self::get_rand_ip($ip);
		$count = count($api_authority_info);
		$sql = "INSERT INTO anketo_all_information (";
		$sql .= " user_information";
		$sql .= ", anketo_key";
		$sql .= ", work_year";
		$sql .= ", sex";
		$sql .= ", category_id";
		$sql .= ", detail_id";
		$sql .= ", choose_flag";
		$sql .= ", comments";
		$sql .= ", created_at )";
		$sql .= " VALUES ". implode(',',array_fill(0, $count, '(?, ?, ?, ?, ?, ?, ?, ?, ?)'));

		$stmt = $con->prepare($sql);

		$params = array();

		foreach ($api_authority_info as $api_type => $value) {
			$params[] = '2';
			$params[] = $anketoKey;
			$params[] = $value['year'];
			$params[] = $value['sex'];
			$params[] = $value['categoryID'];
			$params[] = $value['detailID'];
			$params[] = $value['checkFlag'];
			$params[] = $value['comment'];
			$params[] = $current_time;
		}
		return $stmt->execute($params);
	}
	public static function getData(){
	    $result = array();
        $con = Propel::getConnection();
        $sql = "select distinct detail_name,category_name from anketo_category_name left join anketo_category on anketo_category_name.category_id = anketo_category.id";
        $stmt = $con->prepare($sql);

        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
	}
	    public static function insertData() {
        $result = array();

        $con = Propel::getConnection();

        $sql = '';
        $sql .= 'SELECT
                    ac.id as categoryID
                    , ac.name as categoryName
                    , acn.id as detailID
                    , acn.name as detaiName
                    , common.common_id
                    , common.common_name
                    FROM anketo_category_name acn
                    LEFT JOIN anketo_category ac ON acn.category_id = ac.id
                    LEFT JOIN anketo_detail_mapping adm ON acn.id = adm.detail_id
                    LEFT JOIN anketo_common_name common ON common.common_id = adm.common_id';


        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
	}
       public static function getAllData(){
        $result = array();
        $con = Propel::getConnection();
        $sql = '';
        $sql .= 'SELECT distinct
                    user_information
                    , work_year 
                    , sex 
                    , aai.category_id
                    , ac.category_name
                    , aai.detail_id
                    , common.common_name
                    , aai.comments
                    , acc.category_comment
                    , aai.created_at
                FROM anketo_all_information aai
                    LEFT JOIN anketo_category ac ON aai.category_id = ac.id
                    LEFT JOIN anketo_category_name acn ON aai.detail_id = acn.id
                    LEFT JOIN anketo_common_name common ON common.common_id = aai.choose_flag
                    LEFT JOIN anketo_category_comment acc on acc.category_id = aai.category_id and acc.anketo_key = aai.anketo_key;';
        
        $stmt = $con->prepare($sql);

        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;

        }
        public static function getSelectDetail($category){
        	$result = array();
            $con = Propel::getConnection();
            $sql = "select detail_name from anketo_category_name acn left join anketo_category ac on acn.category_id= ac.id where category_name = '$category'";
            $stmt = $con->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        	
        }
        
        public static function getSelectComment($category1,$detail){
           $result = array();
            $con = Propel::getConnection();
            $sql = "select comments from anketo_all_information aai
                    left join anketo_category ac on aai.category_id = ac.id
                    left join anketo_category_name acn on aai.detail_id = acn.id and aai.category_id = acn.category_id 
                    where ac.category_name = '$category1' and acn.detail_name = '$detail' ";
            $stmt = $con->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        }
	   
        public static function getSelectFlag($dd1,$dd2){
            $result = array();
            $con = Propel::getConnection();
            $sql = "select common_name from anketo_all_information aai
                    left join anketo_category ac on aai.category_id = ac.id
                    left join anketo_category_name acn on aai.detail_id = acn.id and aai.category_id = acn.category_id
                    left join anketo_common_name acnn on acnn.common_id = aai.choose_flag
                    where ac.category_name = '$dd1' and acn.detail_name = '$dd2' group by aai.created_at";
            $stmt = $con->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        }
        
        public static function getFlag($dd1,$dd2){
            $result = array();
            $con = Propel::getConnection();
            $sql = "select common_name from anketo_common_name acn
                    left join anketo_detail_mapping adm on acn.common_id = adm.common_id
                    left join anketo_category_name acnn on acnn.category_id = adm.category_id and acnn.detail_id = adm.detail_id
                    left join anketo_category ac on ac.id = acnn.category_id
                    where ac.category_name = '$dd1' and acnn.detail_name = '$dd2'";
            $stmt = $con->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        }
        
//      public static function get_rand_ip($ip){
//           $arr_1 = array("218","218","66","66","218","218","60","60","202","204","66","66","66","59","61","60","222","221","66","59","60","60","66");
//            $randarr = mt_rand(0, count($arr_1));
//            $ip1 = $arr_1($randarr);
//            $ip2 = round(rand(600000, 2550000)/10000);
//            $ip3 = round(rand(600000, 2550000)/10000);
//            $ip4 = round(rand(600000, 2550000)/10000);
//            return $ip1.'.'.$ip2.'.'.$ip3.'.'.$ip4;        } 
      
   


}


