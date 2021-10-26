<?php
  require_once('../includes/db.php');

  $AdID = $_POST["ad_id"];
  	$AdType = $_POST["ad_type"];
  	$AdUnitprice = $_POST["ad_unitprice"];
	  $AdTotalQty= $_POST["ad_totalqty"];
	  $AdSellingplace = $_POST["ad_sellingplace"];
	  $AdExpirydate = $_POST["ad_exdate"];



 $sql = "UPDATE  advertisement SET Type= '$AdType',Unit_Price='$AdUnitprice',Quantity='$AdTotalQty',Selling_place='$AdSellingplace', Expiration_date='$AdExpirydate', Adver_Status=0  WHERE Ad_Id='$AdID' ;";


 mysqli_query($db,$sql);
 $ad_id = $db->insert_id;


	
 // echo $hid;
//echo("Error description: " . mysqli_error($db));
//echo json_encode($hid);
?>