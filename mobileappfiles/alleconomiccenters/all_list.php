<?php
  require_once('../includes/db.php');

//$subcatid = $_GET["subcatid"];
//$maincatid = $_GET["maincatid"];
  
//  $sql = "SELECT * FROM advertisement WHERE Supplier_Id = '".$suplierid."' ";
 $sql = "SELECT * FROM economic_centers";


/*
SELECT advertisement.Ad_Id,main_categories.main_cat_name,main_sub_categories.sub_catname,advertisement.Ad_Date,advertisement.Adver_Status,supplier_detail.Name,districts.District_name,agri_center.Name, advertisement_images.Image_Url, advertisement_images.Img_Auto_ID FROM `advertisement` LEFT JOIN main_categories ON main_categories.main_cat_id=advertisement.Cat_Id LEFT JOIN main_sub_categories ON main_sub_categories.sub_catid=advertisement.Sub_Cat_id LEFT JOIN supplier_detail ON supplier_detail.Supplier_ID=advertisement.Supplier_Id LEFT JOIN districts ON districts.dis_auto_id=supplier_detail.sup_district LEFT JOIN agri_center ON agri_center.Center_ID=supplier_detail.sup_govicenter LEFT JOIN advertisement_images ON advertisement_images.Ad_Id=advertisement.Ad_Id WHERE advertisement.Supplier_Id= 20  ORDER BY advertisement.Ad_Id DESC

SELECT advertisement.Ad_Id,main_categories.main_cat_name,main_sub_categories.sub_catname,advertisement.Ad_Date,advertisement.Adver_Status,supplier_detail.Name,districts.District_name,agri_center.Name, advertisement_images.Image_Url FROM advertisement,advertisement_images,districts,main_categories,main_sub_categories,supplier_detail,agri_center WHERE supplier_detail.Supplier_ID=advertisement.Supplier_Id AND districts.dis_auto_id=supplier_detail.sup_district AND agri_center.Center_ID=supplier_detail.sup_govicenter AND advertisement_images.Ad_Id=advertisement.Ad_Id AND advertisement.Supplier_Id = 20 GROUP BY advertisement.Ad_Id

*/
	
	
  $result = mysqli_query($db,$sql);
  $data = array();
  
  while($row = mysqli_fetch_assoc($result)) {
      $data[] = $row;
  }
  
  echo mysqli_error($db);
  echo json_encode($data);
?>