<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\DistrictsTamil;

/**
 * DistrictsTamilSearch represents the model behind the search form of `backend\models\DistrictsTamil`.
 */
class DistrictsTamilSearch extends DistrictsTamil
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dis_auto_id'], 'integer'],
            [['District_name'], 'safe'],
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
        $query = DistrictsTamil::find();

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
            'dis_auto_id' => $this->dis_auto_id,
        ]);

        $query->andFilterWhere(['like', 'District_name', $this->District_name]);

        return $dataProvider;
    }
}
