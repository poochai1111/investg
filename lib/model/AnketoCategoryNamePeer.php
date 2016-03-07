<?php

class AnketoCategoryNamePeer extends BaseAnketoCategoryNamePeer
{
	    public static function getInintData() {
        $result = array();

        $con = Propel::getConnection();

        $sql = '';
        $sql .= 'SELECT
                    ac.id as categoryID
                    , ac.category_name
                    , acn.detail_id as detailID
                    , acn.detail_name 
                    , common.common_id
                    , common.common_name
                FROM anketo_category_name acn
                    LEFT JOIN anketo_category ac ON acn.category_id = ac.id
                    LEFT JOIN anketo_detail_mapping adm ON acn.detail_id = adm.detail_id and acn.category_id = adm.category_id
                    LEFT JOIN anketo_common_name common ON common.common_id = adm.common_id' ;

        $stmt = $con->prepare($sql);

        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }
       
}
