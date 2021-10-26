<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "agri_center_tamil".
 *
 * @property int $Center_ID
 * @property string $Name
 * @property int $District_id
 * @property int $Contact_No
 */
class AgriCenterTamil extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'agri_center_tamil';
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

    public function getDistrictTamil()
    {

        return $this->hasOne(DistrictsTamil::className(),['dis_auto_id' => 'District_id']);

    }
}
