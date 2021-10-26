<?php
  require_once('../includes/db.php');
  
   $nic = $_GET["nic_number"];
  
 // $sql = "SELECT * FROM supplier_detail WHERE Nic = '$nic' AND Seller_Stat=1";
$sql = "SELECT supplier_detail.`Supplier_ID` , supplier_detail.`Name` , supplier_detail.`Gender` , supplier_detail.`Nic` , supplier_detail.`Address` , supplier_detail.`Mobile_No` , supplier_detail.`Office_No` , districts.District_name, agri_center.Name  AS GoviCenter, supplier_detail.`sup_password` , supplier_detail.`sup_otp` , supplier_detail.`sup_profile_Image_Id` FROM supplier_detail LEFT JOIN districts ON supplier_detail.sup_district=districts.dis_auto_id LEFT JOIN agri_center ON supplier_detail.sup_govicenter=agri_center.Center_ID WHERE supplier_detail.Nic= '$nic' AND supplier_detail.Seller_Stat=1";





  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>