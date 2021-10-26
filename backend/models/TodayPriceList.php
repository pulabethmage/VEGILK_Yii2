<?php

namespace backend\models;

use Yii;
use backend\models\MainCategories;
use backend\models\MainSubCategories;
/**
 * This is the model class for table "today_price_list".
 *
 * @property int $price_list_id
 * @property int $economic_center_id
 * @property int $main_cat_id
 * @property int $sub_cat_id
 * @property double $stock_price
 * @property double $retail_price
 */
class TodayPriceList extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'today_price_list';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['economic_center_id', 'main_cat_id', 'sub_cat_id', 'stock_price', 'retail_price'], 'required'],
            [['economic_center_id', 'main_cat_id', 'sub_cat_id'], 'integer'],
            [['stock_price', 'retail_price'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'price_list_id' => 'Price List ID',
            'economic_center_id' => 'Economic Center ID',
            'main_cat_id' => 'Main Cat ID',
            'sub_cat_id' => 'Sub Cat ID',
            'stock_price' => 'Stock Price',
            'retail_price' => 'Retail Price',
        ];
    }

    public function getEconomiccenter()
    {

        return $this->hasOne(EconomicCenters::className(),['economic_center_id' => 'economic_center_id']);

    }


    public function getMaincat()
    {

        return $this->hasOne(MainCategories::className(),['main_cat_id' => 'main_cat_id']);

    }

    public function getSubcat()
    {

        return $this->hasOne(MainSubCategories::className(),['sub_catid' => 'sub_cat_id']);

    }


}
