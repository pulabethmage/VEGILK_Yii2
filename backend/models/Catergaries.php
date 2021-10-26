<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "catergaries".
 *
 * @property int $Cat_Id
 * @property string $Cat_Desc
 */
class Catergaries extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'catergaries';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Cat_Desc'], 'required'],
            [['Cat_Desc'], 'string', 'max' => 150],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'Cat_Id' => 'Cat ID',
            'Cat_Desc' => 'Cat Desc',
        ];
    }
}
