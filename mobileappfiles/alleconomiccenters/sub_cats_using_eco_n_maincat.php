<?php
  require_once('../includes/db.php');

$econonimalCenterId = $_GET["ecocenter"];
$mainCatId = $_GET["maincatid"];

 $sql = "SELECT 	today_price_list.stock_price,today_price_list.retail_price,	main_sub_categories.sub_catname 
 FROM today_price_list,main_sub_categories 
 WHERE main_sub_categories.sub_catid=today_price_list.sub_cat_id AND main_cat_id='".$mainCatId."' AND economic_center_id='".$econonimalCenterId."';";

	
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>