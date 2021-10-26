<?php
  require_once('../includes/db.php');

$subcat = $_GET["subcatid"];
  
  $sql = "SELECT * FROM main_sub_categories WHERE main_catid = '".$subcat."' ";
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>