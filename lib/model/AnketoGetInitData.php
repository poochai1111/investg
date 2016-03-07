<?php
  /**
  * 
  */
  class AnketoGetInitData
  {
      
    /**
     * Return the dbhost detail.
     *
     * @access  public
     * @param   $info_db_host_mst_id  dbhost master id
     * @return  array                 dbhost detail
     */
    public static function getInintData() {
        $result = array();

        $con = Propel::getConnection();

        $sql = '';
        $sql .= 'SELECT
                    ac.id
                    , ac.name
                    , acn.id
                    , acn.name
                    , common.common_id
                    , common.common_name
                FROM anketo_category_name acn
                    LEFT JOIN anketo_category ac ON acn.category_id = ac.id
                    LEFT JOIN anketo_detail_mapping adm ON acn.id = adm.detail_id
                    LEFT JOIN anketo_common_name common ON common.common_id = adm.common_id';

        $stmt = $con->prepareStatement($sql);

        // $stmt->setInt(1, $info_db_host_mst_id);

        $rs = $stmt->executeQuery();

        while ($rs->next()) {
            $result[] = $rs->getRow();
        }

        return (count($result) > 0)?$result[0]:array();
    }
  }
