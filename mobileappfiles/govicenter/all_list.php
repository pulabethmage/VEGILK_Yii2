<?php
  require_once('../includes/db.php');

$disid = $_GET["disid"];
  
  $sql = "SELECT * FROM agri_center WHERE District_id = '".$disid."' ";
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>