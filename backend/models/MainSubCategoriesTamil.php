<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "main_sub_categories_tamil".
 *
 * @property int $sub_catid
 * @property int $main_catid
 * @property string $sub_catname
 * @property double $sub_catstockprice
 * @property double $sub_catretailprice
 * @property string $sub_cat_imageurl
 */
class MainSubCategoriesTamil extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'main_sub_categories_tamil';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['main_catid', 'sub_catname'], 'required'],
            [['main_catid'], 'integer'],
            [['sub_catname', 'sub_cat_imageurl'], 'string'],
            [['sub_catstockprice', 'sub_catretailprice'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'sub_catid' => 'Sub Catid',
            'main_catid' => 'Main Catid',
            'sub_catname' => 'Sub Catname',
            'sub_catstockprice' => 'Sub Catstockprice',
            'sub_catretailprice' => 'Sub Catretailprice',
            'sub_cat_imageurl' => 'Sub Cat Imageurl',
        ];
    }

    public function getMaincat()
    {

        return $this->hasOne(MainCategoriesTamil::className(),['main_cat_id' => 'main_catid']);

    }
}
