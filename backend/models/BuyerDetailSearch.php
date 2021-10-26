<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\BuyerDetail;

/**
 * BuyerDetailSearch represents the model behind the search form of `backend\models\BuyerDetail`.
 */
class BuyerDetailSearch extends BuyerDetail
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Buyer_ID', 'Mobile_No', 'Office_No'], 'integer'],
            [['Name', 'Gender', 'Nic', 'Address', 'Email', 'Reg_Date'], 'safe'],
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
        $query = BuyerDetail::find();

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
            'Buyer_ID' => $this->Buyer_ID,
            'Mobile_No' => $this->Mobile_No,
            'Office_No' => $this->Office_No,
            'Reg_Date' => $this->Reg_Date,
        ]);

        $query->andFilterWhere(['like', 'Name', $this->Name])
            ->andFilterWhere(['like', 'Gender', $this->Gender])
            ->andFilterWhere(['like', 'Nic', $this->Nic])
            ->andFilterWhere(['like', 'Address', $this->Address])
            ->andFilterWhere(['like', 'Email', $this->Email]);

        return $dataProvider;
    }
}
