<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\AgriCenter;

/**
 * AgriCenterSearch represents the model behind the search form of `backend\models\AgriCenter`.
 */
class AgriCenterSearch extends AgriCenter
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Center_ID', 'Contact_No'], 'integer'],
            [['Name', 'District_id'], 'safe'],
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
        $query = AgriCenter::find();

        $query->joinWith('district');

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
            'Center_ID' => $this->Center_ID,
            'Contact_No' => $this->Contact_No,
        ]);

        $query->andFilterWhere(['like', 'districts.District_name', $this->District_id]);

        $query->andFilterWhere(['like', 'Name', $this->Name]);

        return $dataProvider;
    }
}
