<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "districts_tamil".
 *
 * @property int $dis_auto_id
 * @property string $District_name
 */
class DistrictsTamil extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'districts_tamil';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['District_name'], 'required'],
            [['District_name'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'dis_auto_id' => 'Dis Auto ID',
            'District_name' => 'District Name',
        ];
    }
}
