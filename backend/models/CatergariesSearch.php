<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Catergaries;

/**
 * CatergariesSearch represents the model behind the search form of `backend\models\Catergaries`.
 */
class CatergariesSearch extends Catergaries
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Cat_Id'], 'integer'],
            [['Cat_Desc'], 'safe'],
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
        $query = Catergaries::find();

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
            'Cat_Id' => $this->Cat_Id,
        ]);

        $query->andFilterWhere(['like', 'Cat_Desc', $this->Cat_Desc]);

        return $dataProvider;
    }
}
