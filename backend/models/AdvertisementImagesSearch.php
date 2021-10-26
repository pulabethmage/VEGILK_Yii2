<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\AdvertisementImages;

/**
 * AdvertisementImagesSearch represents the model behind the search form of `backend\models\AdvertisementImages`.
 */
class AdvertisementImagesSearch extends AdvertisementImages
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Img_Auto_ID', 'Ad_Id', 'Image_ID'], 'integer'],
            [['Image_Url'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = AdvertisementImages::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'Img_Auto_ID' => $this->Img_Auto_ID,
            'Ad_Id' => $this->Ad_Id,
            'Image_ID' => $this->Image_ID,
        ]);

        $query->andFilterWhere(['like', 'Image_Url', $this->Image_Url]);

        return $dataProvider;
    }
}
