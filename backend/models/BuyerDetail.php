<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "buyer_detail".
 *
 * @property int $Buyer_ID
 * @property string $Name
 * @property string $Gender
 * @property string $Nic
 * @property int $Mobile_No
 * @property int $Office_No
 * @property string $Address
 * @property string $Email
 * @property string $Reg_Date
 */
class BuyerDetail extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'buyer_detail';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Name', 'Gender', 'Nic', 'Mobile_No', 'Office_No', 'Address', 'Email', 'Reg_Date'], 'required'],
            [['Mobile_No', 'Office_No'], 'integer'],
            [['Reg_Date'], 'safe'],
            [['Name', 'Address', 'Email'], 'string', 'max' => 255],
            [['Gender', 'Nic'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Buyer_ID' => 'Buyer ID',
            'Name' => 'Name',
            'Gender' => 'Gender',
            'Nic' => 'Nic',
            'Mobile_No' => 'Mobile No',
            'Office_No' => 'Office No',
            'Address' => 'Address',
            'Email' => 'Email',
            'Reg_Date' => 'Reg Date',
        ];
    }
}
