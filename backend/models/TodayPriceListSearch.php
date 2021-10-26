<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\TodayPriceList;

/**
 * TodayPriceListSearch represents the model behind the search form of `backend\models\TodayPriceList`.
 */
class TodayPriceListSearch extends TodayPriceList
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['price_list_id'], 'integer'],
            [['stock_price', 'retail_price'], 'number'],
            [['economic_center_id','main_cat_id', 'sub_cat_id'], 'safe'],
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
        $query = TodayPriceList::find();

        $query->joinWith('economiccenter');
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
            'price_list_id' => $this->price_list_id,
            'stock_price' => $this->stock_price,
            'retail_price' => $this->retail_price,
        ])
        ->andFilterWhere(['like','economic_centers.economic_center_name', $this->economic_center_id])
        ->andFilterWhere(['like','main_categories.main_cat_name', $this->main_cat_id])
        ->andFilterWhere(['like','main_sub_categories.sub_catname', $this->sub_cat_id]);
        // ->andFilterWhere(['like','tablenameAsDB.coloumnName', $this->economic_center_id]);
        return $dataProvider;
    }
}
