<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "advertisement".
 *
 * @property int $Ad_Id
 * @property int $Supplier_Id
 * @property int $Cat_Id
 * @property int $Sub_Cat_id
 * @property string $Type
 * @property double $Unit_Price
 * @property int $Quantity
 * @property string $Units
 * @property string $Selling_place
 * @property string $Expiration_date
 * @property string $Ad_Date
 * @property string $Adver_Status
 */
class Advertisement extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'advertisement';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Supplier_Id', 'Cat_Id', 'Sub_Cat_id', 'Type', 'Unit_Price', 'Quantity', 'Units', 'Selling_place', 'Expiration_date', 'Ad_Date', 'Adver_Status'], 'required'],
            [['Supplier_Id', 'Cat_Id', 'Sub_Cat_id', 'Quantity'], 'integer'],
            [['Type', 'Units', 'Selling_place'], 'string'],
            [['Unit_Price'], 'number'],
            [['Expiration_date', 'Ad_Date'], 'safe'],
            [['Adver_Status'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Ad_Id' => 'Ad ID',
            'Supplier_Id' => 'Supplier ID',
            'Cat_Id' => 'Cat ID',
            'Sub_Cat_id' => 'Sub Cat ID',
            'Type' => 'Type',
            'Unit_Price' => 'Unit Price',
            'Quantity' => 'Quantity',
            'Units' => 'Units',
            'Selling_place' => 'Selling Place',
            'Expiration_date' => 'Expiration Date',
            'Ad_Date' => 'Ad Date',
            'Adver_Status' => 'Adver Status',
        ];
    }

    public function getMaincat()
    {

        return $this->hasOne(MainCategories::className(),['main_cat_id' => 'Cat_Id']);

    }

    public function getSubcat()
    {

        return $this->hasOne(MainSubCategories::className(),['sub_catid' => 'Sub_Cat_id']);

    }


}
