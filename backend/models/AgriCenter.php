<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "agri_center".
 *
 * @property int $Center_ID
 * @property string $Name
 * @property int $District_id
 * @property int $Contact_No
 */
class AgriCenter extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'agri_center';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Name', 'District_id', 'Contact_No'], 'required'],
            [['District_id', 'Contact_No'], 'integer'],
            [['Name'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Center_ID' => 'Center ID',
            'Name' => 'Name',
            'District_id' => 'District ID',
            'Contact_No' => 'Contact No',
        ];
    }

    public function getDistrict()
    {

        return $this->hasOne(Districts::className(),['dis_auto_id' => 'District_id']);

    }

}
