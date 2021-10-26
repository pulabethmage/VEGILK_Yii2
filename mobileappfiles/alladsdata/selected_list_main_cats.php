<?php
  require_once('../includes/db.php');

$maincatid = $_GET["maincatid"];
  

 $sql = "SELECT main_sub_categories.sub_cat_imageurl,main_sub_categories.sub_catname,main_sub_categories.main_catid,main_sub_categories.sub_catid FROM main_sub_categories WHERE main_sub_categories.main_catid='".$maincatid."'";


	
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>