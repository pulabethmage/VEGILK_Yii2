<?php
  require_once('../includes/db.php');

$suplierid = $_GET["suplierid"];
  
//  $sql = "SELECT * FROM advertisement WHERE Supplier_Id = '".$suplierid."' ";
 $sql = "SELECT advertisement.Ad_Id,main_categories.main_cat_name,main_categories.main_cat_id,main_sub_categories.sub_catname,main_sub_categories.sub_catid,advertisement.Ad_Date,advertisement.Adver_Status,advertisement.Type,advertisement.Unit_Price,advertisement.Quantity,advertisement.Units,advertisement.Selling_place, advertisement.Expiration_date FROM `advertisement` LEFT JOIN main_categories ON main_categories.main_cat_id=advertisement.Cat_Id LEFT JOIN main_sub_categories ON main_sub_categories.sub_catid=advertisement.Sub_Cat_id WHERE advertisement.Supplier_Id='".$suplierid."' ORDER BY advertisement.Ad_Id DESC ";


	
	
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>