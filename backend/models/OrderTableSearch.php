<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\OrderTable;

/**
 * OrderTableSearch represents the model behind the search form of `backend\models\OrderTable`.
 */
class OrderTableSearch extends OrderTable
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Order_ID', 'Ad_Id', 'Buyer_Id', 'Quantity', 'Status_Id'], 'integer'],
            [['Remark', 'Order_Date'], 'safe'],
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
        $query = OrderTable::find();

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
            'Order_ID' => $this->Order_ID,
            'Ad_Id' => $this->Ad_Id,
            'Buyer_Id' => $this->Buyer_Id,
            'Quantity' => $this->Quantity,
            'Status_Id' => $this->Status_Id,
            'Order_Date' => $this->Order_Date,
        ]);

        $query->andFilterWhere(['like', 'Remark', $this->Remark]);

        return $dataProvider;
    }
}
