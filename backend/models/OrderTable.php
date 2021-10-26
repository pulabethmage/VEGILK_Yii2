<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "order_table".
 *
 * @property int $Order_ID
 * @property int $Ad_Id
 * @property int $Buyer_Id
 * @property int $Quantity
 * @property int $Status_Id
 * @property string $Remark
 * @property string $Order_Date
 */
class OrderTable extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'order_table';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Ad_Id', 'Buyer_Id', 'Quantity', 'Status_Id', 'Remark', 'Order_Date'], 'required'],
            [['Ad_Id', 'Buyer_Id', 'Quantity', 'Status_Id'], 'integer'],
            [['Order_Date'], 'safe'],
            [['Remark'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Order_ID' => 'Order ID',
            'Ad_Id' => 'Ad ID',
            'Buyer_Id' => 'Buyer ID',
            'Quantity' => 'Quantity',
            'Status_Id' => 'Status ID',
            'Remark' => 'Remark',
            'Order_Date' => 'Order Date',
        ];
    }
}
