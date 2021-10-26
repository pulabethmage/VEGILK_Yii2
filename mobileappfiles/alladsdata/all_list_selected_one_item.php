<?php
  require_once('../includes/db.php');

$adid = $_GET["adid"];
  
//  $sql = "SELECT * FROM advertisement WHERE Supplier_Id = '".$suplierid."' ";
 $sql = "SELECT advertisement.Ad_Id,main_categories.main_cat_name,main_sub_categories.sub_catname,advertisement.Type,advertisement.Ad_Date AS AD_Date,advertisement.Adver_Status,supplier_detail.Name,districts.District_name AS DIS_Name,agri_center.Name AS AGRI_Name,ANY_VALUE(advertisement_images.Image_Url) AS Image_Url,ANY_VALUE(advertisement_images.Img_Auto_ID) AS Img_Auto_ID,advertisement.Unit_Price,advertisement.Quantity,advertisement.Units,advertisement.Selling_place,supplier_detail.Mobile_No,advertisement.Expiration_date FROM `advertisement` LEFT JOIN main_categories ON main_categories.main_cat_id=advertisement.Cat_Id LEFT JOIN main_sub_categories ON main_sub_categories.sub_catid=advertisement.Sub_Cat_id LEFT JOIN supplier_detail ON supplier_detail.Supplier_ID=advertisement.Supplier_Id LEFT JOIN districts ON districts.dis_auto_id=supplier_detail.sup_district LEFT JOIN agri_center ON agri_center.Center_ID=supplier_detail.sup_govicenter LEFT JOIN advertisement_images ON advertisement_images.Ad_Id=advertisement.Ad_Id WHERE  advertisement.Ad_Id='".$adid."'  GROUP BY advertisement.Ad_Id DESC";


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