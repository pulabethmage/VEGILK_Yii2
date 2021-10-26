<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "main_categories".
 *
 * @property int $main_cat_id
 * @property string $main_cat_name
 */
class MainCategories extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'main_categories';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['main_cat_name'], 'required'],
            [['main_cat_name'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'main_cat_id' => 'Main Cat ID',
            'main_cat_name' => 'Main Cat Name',
        ];
    }
}
