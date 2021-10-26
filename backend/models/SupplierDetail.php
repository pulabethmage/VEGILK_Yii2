<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "supplier_detail".
 *
 * @property int $Supplier_ID
 * @property string $Name
 * @property string $Gender
 * @property string $Nic
 * @property string $Address
 * @property int $Mobile_No
 * @property int $Office_No
 * @property int $sup_district
 * @property int $sup_govicenter
 * @property string $sup_password
 * @property int $sup_otp
 * @property string $Reg_Date
 * @property string $Email
 * @property string $sup_profile_Image_Id
 * @property int $Seller_Stat
 */
class SupplierDetail extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'supplier_detail';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Name', 'Gender', 'Nic', 'Address', 'Mobile_No', 'Office_No', 'sup_district', 'sup_govicenter', 'sup_password', 'sup_otp', 'Reg_Date', 'Seller_Stat'], 'required'],
            [['Mobile_No', 'Office_No', 'sup_district', 'sup_govicenter', 'sup_otp', 'Seller_Stat'], 'integer'],
            [['Reg_Date'], 'safe'],
            [['Name', 'Address', 'Email', 'sup_profile_Image_Id'], 'string', 'max' => 255],
            [['Gender'], 'string', 'max' => 20],
            [['Nic'], 'string', 'max' => 50],
            [['sup_password'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Supplier_ID' => 'Supplier ID',
            'Name' => 'Name',
            'Gender' => 'Gender',
            'Nic' => 'Nic',
            'Address' => 'Address',
            'Mobile_No' => 'Mobile No',
            'Office_No' => 'Office No',
            'sup_district' => 'Sup District',
            'sup_govicenter' => 'Sup Govicenter',
            'sup_password' => 'Sup Password',
            'sup_otp' => 'Sup Otp',
            'Reg_Date' => 'Reg Date',
            'Email' => 'Email',
            'sup_profile_Image_Id' => 'Sup Profile Image ID',
            'Seller_Stat' => 'Seller Stat',
        ];
    }

    public function getDistrict()
    {

        return $this->hasOne(Districts::className(),['dis_auto_id' => 'sup_district']);

    }

    public function getGovicenter()
    {

        return $this->hasOne(AgriCenter::className(),['Center_ID' => 'sup_govicenter']);

    }



}
