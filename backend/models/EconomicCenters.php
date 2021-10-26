<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "economic_centers".
 *
 * @property int $economic_center_id
 * @property string $economic_center_name
 */
class EconomicCenters extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'economic_centers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['economic_center_name'], 'required'],
            [['economic_center_name'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'economic_center_id' => 'Economic Center ID',
            'economic_center_name' => 'Economic Center Name',
        ];
    }
}
