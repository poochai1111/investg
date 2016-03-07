<?php

/**
 * job actions.
 *
 * @package    jobeet
 * @subpackage job
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */

class anketoModulesActions extends sfActions {
	public function executeIndex(sfWebRequest $request) {
		$result_list = AnketoCategoryNamePeer::getInintData();
//		$this->getLogger()->log(print_r($result_list,true));
		$arr = array();
		foreach ($result_list as $key => $value) {
			$arr[$value['category_name']][$value['detail_name']][] = $value['common_name'];
		}
		$this->getLogger()->log(print_r($arr,true));
		$this->anketo_list = $arr;
	}

	public function executeCreate(sfWebRequest $request) {
		$postParam = $request->getPostParameters();
		$insertList = $postParam["dataList"];		
		$commentList = $postParam["commentList"];
		$allInformationArr = json_decode($insertList, true);
		$this->getLogger()->log(print_r($allInformationArr,true));
		$anketoKey = uniqid();
		AnketoAllInformationPeer::insertAllInformation($anketoKey, $allInformationArr);
		$commentArr = json_decode($commentList, true);
		AnketoCategoryCommentPeer::insertCategoryComment($anketoKey, $commentArr);
	}
	public function executeShow(sfWebRequest $request) {
		$result = AnketoAllInformationPeer::getAllData();
		$all = array();
		foreach ($result as $key => $value) {
			$all[] = $value;
		}		
		$this->info = $all;
	}
	public function executeCount(sfWebRequest $request){
		$result = AnketoAllInformationPeer::getData();
	    $all1 = array();
		foreach ($result as $key => $value) {
			$all1[] = $value;
		}
		$this->info1 = $all1;
		
		$result2 = AnketoAllInformationPeer::getAllData();
		$all2 = array();
		foreach ($result2 as $key => $value) {
			$all2[] = $value;
		}
		$this->info2 = $all2;
	}
	public function executeSelect(sfWebRequest $request){
		$category = $_POST["newValue0"];
		$detail = $_POST["newValue"];
		$category1 = $_POST["oldValue"];
		$result = AnketoAllInformationPeer::getSelectDetail($category);		
	    $all = '';                                                               //get detail_name
		foreach ($result as $key => $value) {
			$all = $all . $value['detail_name'] . ',';
		}
		$all = substr($all, 0, -1);
		
		$result1 = AnketoAllInformationPeer::getSelectComment($category1,$detail);
		$data = '';                                                             //get comments
		foreach ($result1 as $key1=> $value1){
		    $data = $data.$value1['comments'] . ',';
		}
		$data = substr($data, 0,-1);		
		echo $all,$data;				
    	return sfView::NONE;
        
	}
	public function executeAnalysize(sfWebRequest $request){
	    $dd1 = $_POST["dd1"];
	    $dd2 = $_POST["dd2"];
	    $count = array();
	    $all = array();
	    $all1 = array();
	    $result = AnketoAllInformationPeer::getSelectFlag($dd1,$dd2);    //get selected flag_name	 
        $data = AnketoAllInformationPeer::getFlag($dd1, $dd2);        // get all flag_name
	     foreach ($data as $key=>$value){
	       $all[] = $value['common_name'];
	    }
	     foreach ($result as $key=>$value){
	       $all1[] = $value['common_name'];
	    }
	    foreach ($all as $a){
            $i = 0;
          foreach ($all1 as $b){
	           if ($a == $b) $i++; 	         
	       }
	        $count[] = $i;	         
	}       
	    $xValue = implode(',', $all);
        $xCount = implode(',', $count);
        $a = $xValue.','.$xCount;
	    echo $a;
	    return sfView::NONE;	    
	}
	public function executeLogin(sfWebRequest $request){

}
	public function executeConfirm(sfWebRequest $request){
	     $user = $_POST["user"];	     
	     $pwd = $_POST["pwd"];
//          var_dump($user);
//          var_dump($pwd);
	     $result = AnketoUserManagementPeer::userLogin($user,$pwd);
//	      var_dump($result);
	     if (!$result){
	        $data = AnketoUserManagementPeer::insertUser_information($user,$pwd);
	        if ($data){
	        	echo "1";
	            return sfView::NONE;
	        }
	        else {
	           echo "<script type='text/javascript'>alert('插入失败！');</script>";
	        }
	        	        
	     }
	     else {
	        echo "";
	        return sfView::NONE;
	     }
	}

  

}
