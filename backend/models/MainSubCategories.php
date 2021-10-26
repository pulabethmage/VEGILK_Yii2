<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "main_sub_categories".
 *
 * @property int $sub_catid
 * @property int $main_catid
 * @property string $sub_catname
 * @property double $sub_catstockprice
 * @property double $sub_catretailprice
 * @property string $sub_cat_imageurl
 */
class MainSubCategories extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */

     public $subcatimageurlfile;


    public static function tableName()
    {
        return 'main_sub_categories';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['main_catid', 'sub_catname'], 'required'],
            [['main_catid'], 'integer'],
            [['subcatimageurlfile'],'file'],
            [['sub_catname'], 'string'],
            [['sub_cat_imageurl'],'safe'],
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
            'subcatimageurlfile' => 'Upload Sub Cat Image',
        ];
    }

    public function getMaincat()
    {

        return $this->hasOne(MainCategories::className(),['main_cat_id' => 'main_catid']);

    }


}
