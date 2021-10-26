<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "order_status".
 *
 * @property int $Status_ID
 * @property string $Status_Desc
 */
class OrderStatus extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'order_status';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Status_Desc'], 'required'],
            [['Status_Desc'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Status_ID' => 'Status ID',
            'Status_Desc' => 'Status Desc',
        ];
    }
}
