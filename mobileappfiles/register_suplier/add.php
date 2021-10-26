<?php
  require_once('../includes/db.php');
  
  	$Name = $_POST["name"];
  	$Gender = $_POST["gender"];
  	$Nic = $_POST["nic"];
 
  	$Address = $_POST["address"];
  	$Mobile_No = $_POST["mphone"];
  	
	$Office_No = '0112345678';
	
	$sup_district = $_POST["district"];
	$sup_govicenter = $_POST["govicenter"];
	$sup_password = $_POST["suppassword"];
	
	$sup_otp = '123789';

	/// Getting System Date 
	$timezone = date_default_timezone_get();
	date_default_timezone_set($timezone);
	$date = date('Y-m-d H:i:s');
	$Reg_Date = $date;


	$Email = "info@gmail.com";
	
	$sup_profile_Image_Id = "This is where the url goes...";
	$Seller_Stat = "1";
  
 
  

  
  $sql = "INSERT INTO supplier_detail(Name,Gender,Nic,Address,Mobile_No,Office_No,sup_district,sup_govicenter,sup_password,sup_otp,Reg_Date,Email,sup_profile_Image_Id,Seller_Stat) VALUES('$Name','$Gender','$Nic','$Address',$Mobile_No,$Office_No,'$sup_district','$sup_govicenter','$sup_password','$sup_otp','$Reg_Date','$Email','$sup_profile_Image_Id','$Seller_Stat')";
  
  mysqli_query($db,$sql);
  $hid = $db->insert_id;
  
echo("Error description: " . mysqli_error($db));
  //echo json_encode($hid);
?>