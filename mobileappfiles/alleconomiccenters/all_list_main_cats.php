<?php
  require_once('../includes/db.php');


 $sql = "SELECT * FROM 	main_categories";

	
	
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>