<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\AgriCenterTamil;

/**
 * AgriCenterTamilSearch represents the model behind the search form of `backend\models\AgriCenterTamil`.
 */
class AgriCenterTamilSearch extends AgriCenterTamil
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Center_ID', 'District_id', 'Contact_No'], 'integer'],
            [['Name'], 'safe'],
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
        $query = AgriCenterTamil::find();

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
            'District_id' => $this->District_id,
            'Contact_No' => $this->Contact_No,
        ]);

        $query->andFilterWhere(['like', 'Name', $this->Name]);

        return $dataProvider;
    }
}
