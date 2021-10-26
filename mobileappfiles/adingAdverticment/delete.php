<?php
  require_once('../includes/db.php');

  $AdID = $_GET["ad_id"];


 $sql = "DELETE FROM  advertisement WHERE Ad_Id='$AdID' ;";
 $sql .= "DELETE FROM  advertisement_images WHERE Ad_Id='$AdID' ;";


 mysqli_multi_query($db,$sql);
 $ad_id = $db->insert_id;

//////////// Decoding Images

	echo "Successfully Deleted!!";
 // echo $hid;
//echo("Error description: " . mysqli_error($db));
//echo json_encode($hid);
?>