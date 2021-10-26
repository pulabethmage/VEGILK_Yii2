<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\EconomicCenters;

/**
 * EconomicCentersSearch represents the model behind the search form of `backend\models\EconomicCenters`.
 */
class EconomicCentersSearch extends EconomicCenters
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['economic_center_id'], 'integer'],
            [['economic_center_name'], 'safe'],
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
        $query = EconomicCenters::find();

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
            'economic_center_id' => $this->economic_center_id,
        ]);

        $query->andFilterWhere(['like', 'economic_center_name', $this->economic_center_name]);

        return $dataProvider;
    }
}
