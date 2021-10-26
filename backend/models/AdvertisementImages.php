<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "advertisement_images".
 *
 * @property int $Img_Auto_ID
 * @property int $Ad_Id
 * @property int $Image_ID
 * @property string $Image_Url
 */
class AdvertisementImages extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'advertisement_images';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Ad_Id', 'Image_ID', 'Image_Url'], 'required'],
            [['Ad_Id', 'Image_ID'], 'integer'],
            [['Image_Url'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Img_Auto_ID' => 'Img Auto ID',
            'Ad_Id' => 'Ad ID',
            'Image_ID' => 'Image ID',
            'Image_Url' => 'Image Url',
        ];
    }
}
