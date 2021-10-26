<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Advertisement;

/**
 * AdvertisementSearch represents the model behind the search form of `backend\models\Advertisement`.
 */
class AdvertisementSearch extends Advertisement
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Ad_Id', 'Supplier_Id', 'Quantity'], 'integer'],
            [['Type', 'Units', 'Selling_place', 'Expiration_date', 'Ad_Date', 'Adver_Status', 'Cat_Id', 'Sub_Cat_id'], 'safe'],
            [['Unit_Price'], 'number'],
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
        $query = Advertisement::find();

        $query->joinWith('maincat');
        $query->joinWith('subcat');

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
            'Ad_Id' => $this->Ad_Id,
            'Supplier_Id' => $this->Supplier_Id,
            'Unit_Price' => $this->Unit_Price,
            'Quantity' => $this->Quantity,
            'Expiration_date' => $this->Expiration_date,
            'Ad_Date' => $this->Ad_Date,
        ]);

        $query->andFilterWhere(['like', 'Type', $this->Type])
            ->andFilterWhere(['like', 'Units', $this->Units])
            ->andFilterWhere(['like', 'Selling_place', $this->Selling_place])
            ->andFilterWhere(['like', 'Adver_Status', $this->Adver_Status])
            ->andFilterWhere(['like','main_categories.main_cat_name', $this->Cat_Id])
            ->andFilterWhere(['like','main_sub_categories.sub_catname', $this->Sub_Cat_id]);

        return $dataProvider;
    }
}
