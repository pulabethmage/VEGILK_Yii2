<?php
  require_once('../includes/db.php');

  
  	$SubId = $_POST["ad_sup_id"];
  	$CatId = $_POST["ad_Cat_id"];
  	$SubCatId = $_POST["ad_Cat_Sub_id"];

	$Type = $_POST["ad_type"];
  	$Unitprice = $_POST["ad_unitprice"];
  	$Units = $_POST["ad_units"];

	$TotalQty = $_POST["ad_total_qty"];
  	$SellingPlace = $_POST["ad_sellingplace"];
  	$ExpiryDate = $_POST["ad_expirationdate"];

	$AdPostedDate = $_POST["ad_posteddate"];
  	$Adstatus = $_POST["as_status"];

	$image_01_string = $_POST["image_string_01"];
	$image_02_string = $_POST["image_string_02"];
	$image_03_string = $_POST["image_string_03"];



 $sql = "INSERT INTO  advertisement(Supplier_Id,Cat_Id,Sub_Cat_id,Type,Unit_Price,Quantity,Units,Selling_place,Expiration_date,Ad_Date,Adver_Status) VALUES('$SubId','$CatId','$SubCatId','$Type',$Unitprice,$TotalQty,'$Units','$SellingPlace','$ExpiryDate','$AdPostedDate','$Adstatus')";


 mysqli_query($db,$sql);
 $ad_id = $db->insert_id;

//////////// Decoding Images



////////////////////////////


	if($image_01_string != 'Empty' && $image_02_string != 'Empty' && $image_03_string != 'Empty'){
		
		$unid_01 = uniqid();
		$file1 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg', "wb");
		fwrite($file1, base64_decode($image_01_string));
		fclose($file1);
		$imageurl_01 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg';
  
		
		$unid_02 = uniqid();
		$file2 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_02.'.jpg', "wb");
		fwrite($file2, base64_decode($image_02_string));
		fclose($file2);
		$imageurl_02 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_02.'.jpg';
		
		$unid_03 = uniqid();
		$file3 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_03.'.jpg', "wb");
		fwrite($file3, base64_decode($image_03_string));
		fclose($file3);
		$imageurl_03 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_03.'.jpg';
		
		
		$sql1 = "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_01');";
		$sql1 .= "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_02');";
		$sql1 .= "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_03')";
		mysqli_multi_query($db,$sql1);
	
	}
	else if($image_01_string != 'Empty' && $image_02_string != 'Empty' && $image_03_string == 'Empty'){
		
		
		
		$unid_01 = uniqid();
		$file1 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg', "wb");
		fwrite($file1, base64_decode($image_01_string));
		fclose($file1);
		$imageurl_01 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg';
  
		
		$unid_02 = uniqid();
		$file2 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_02.'.jpg', "wb");
		fwrite($file2, base64_decode($image_02_string));
		fclose($file2);
		$imageurl_02 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_02.'.jpg';
		
		
		
		$sql2 = "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_01');";
		$sql2 .= "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_02')";
		mysqli_multi_query($db,$sql2);
		
	
	}
	else if($image_01_string != 'Empty' && $image_02_string == 'Empty' && $image_03_string == 'Empty'){
		
		
		
		$unid_01 = uniqid();
		$file1 = fopen('adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg', "wb");
		fwrite($file1, base64_decode($image_01_string));
		fclose($file1);
		$imageurl_01 = 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/'.$SubId.'_'.$ad_id.'_'.$unid_01.'.jpg';
		
		
		
		$sql3 = "INSERT INTO  advertisement_images(Ad_Id,Image_ID,Image_Url) VALUES('$ad_id','$SubId','$imageurl_01');";
		mysqli_query($db,$sql3);
	
	}
	
 // echo $hid;
//echo("Error description: " . mysqli_error($db));
//echo json_encode($hid);
?>